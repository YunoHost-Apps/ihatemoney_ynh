### Constants

nginx_conf_path="/etc/nginx/conf.d/${domain}.d/ihatemoney.conf"
supervisor_conf_path="/etc/supervisor/conf.d/ihatemoney.conf"
gunicorn_conf_path="/etc/ihatemoney/gunicorn.conf.py"
ihatemoney_conf_path="/etc/ihatemoney/ihatemoney.cfg"
INSTALL_DIR="/opt/yunohost/ihatemoney"


### Functions


install_apt_dependencies() {
    ynh_install_app_dependencies \
        python3-dev \
        python3-virtualenv \
        libffi-dev \
        libssl-dev \
        supervisor \
        virtualenv
}

create_unix_user() {
    mkdir -p /opt/yunohost
    useradd ihatemoney -d /opt/yunohost/ihatemoney/ --create-home || ynh_die "User creation failed"
}

create_system_dirs() {
    install -o ihatemoney -g ihatemoney -m 755 -d \
         /var/log/ihatemoney \
         /etc/ihatemoney
    mkdir -p /opt/yunohost
}

init_virtualenv () {
    virtualenv /opt/yunohost/ihatemoney/venv --python /usr/bin/python3

    # PyMySQL → cryptography → setuptools>=18.5
    # Required on Jessie, Stretch has setuptools>=18.5
    /opt/yunohost/ihatemoney/venv/bin/pip install 'setuptools>=18.5'
}

pip_install () {
    # Werkzeug stuff is workaround https://github.com/spiral-project/ihatemoney/issues/540
    /opt/yunohost/ihatemoney/venv/bin/pip install --upgrade \
     'gunicorn>=19.3.0' \
     'PyMySQL>=0.9,<0.10' \
     'ihatemoney>=4,<5' \
     'Werkzeug==0.16' \

}

configure_nginx () {
    local domain=$1
    local path=$2
    local python_version="$(readlink /usr/bin/python3|sed s/.*python//)"

    ynh_replace_string "PATHTOCHANGE"   "$path"           ../conf/nginx.conf
    ynh_replace_string "PYTHON_VERSION" "$python_version" ../conf/nginx.conf
    # Fix double-slash for domain-root install
    ynh_replace_string "location //"    "location /"      ../conf/nginx.conf
    install -o root -g root -m644 \
         ../conf/nginx.conf /etc/nginx/conf.d/$domain.d/ihatemoney.conf
}

configure_supervisor () {
    install -o root -g root -m 644 \
         ../conf/supervisord.conf /etc/supervisor/conf.d/ihatemoney.conf
}
