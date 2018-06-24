### Constants

nginx_conf_path="/etc/nginx/conf.d/${domain}.d/ihatemoney.conf"
supervisor_conf_path="/etc/supervisor/conf.d/ihatemoney.conf"
gunicorn_conf_path="/etc/ihatemoney/gunicorn.conf.py"
ihatemoney_conf_path="/etc/ihatemoney/ihatemoney.cfg"
INSTALL_DIR="/opt/yunohost/ihatemoney"


### Functions


install_apt_dependencies() {
    ynh_install_app_dependencies python3-virtualenv supervisor virtualenv
}

create_unix_user() {
    sudo mkdir -p /opt/yunohost
    sudo useradd ihatemoney -d /opt/yunohost/ihatemoney/ --create-home || ynh_die "User creation failed"
}

create_system_dirs() {
    sudo install -o ihatemoney -g ihatemoney -m 755 -d \
         /var/log/ihatemoney \
         /etc/ihatemoney
    sudo mkdir -p /opt/yunohost
}

init_virtualenv () {
    sudo virtualenv /opt/yunohost/ihatemoney/venv --python /usr/bin/python3
}

configure_nginx () {
    local domain=$1
    local path=$2

    sed -i "s@PATHTOCHANGE@$path@g" ../conf/nginx.conf
    # Fix double-slash for domain-root install
    sed -i "s@location //@location /@" ../conf/nginx.conf
    sudo install -o root -g root -m644 \
         ../conf/nginx.conf /etc/nginx/conf.d/$domain.d/ihatemoney.conf
}

configure_supervisor () {
    sudo install -o root -g root -m 644 \
         ../conf/supervisord.conf /etc/supervisor/conf.d/ihatemoney.conf
}


### Backported helpers (from testing)


# Add path
ynh_normalize_url_path () {
	path_url=$1
	test -n "$path_url" || ynh_die "ynh_normalize_url_path expect a URL path as first argument and received nothing."
	if [ "${path_url:0:1}" != "/" ]; then    # If the first character is not a /
		path_url="/$path_url"    # Add / at begin of path variable
	fi
	if [ "${path_url:${#path_url}-1}" == "/" ] && [ ${#path_url} -gt 1 ]; then    # If the last character is a / and that not the only character.
		path_url="${path_url:0:${#path_url}-1}"	# Delete the last character
	fi
	echo $path_url
}
