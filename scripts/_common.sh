### Constants

nginx_conf_path="/etc/nginx/conf.d/${domain}.d/ihatemoney.conf"
supervisor_conf_path="/etc/supervisor/conf.d/ihatemoney.conf"
gunicorn_conf_path="/etc/ihatemoney/gunicorn.conf.py"
ihatemoney_conf_path="/etc/ihatemoney/settings.py"
INSTALL_DIR="/opt/yunohost/ihatemoney"


### Functions

fetch_and_extract() {
    local DESTDIR=$1
    local OWNER_USER=${2:-admin}

    VERSION=0.9
    SHA256=4dab1018563097b309848de5873d63b913390a66327871b0c958ed8516762870
    SOURCE_URL="https://github.com/spiral-project/ihatemoney/archive/${VERSION}.tar.gz"

    # retrieve and extract Roundcube tarball
    tarball="/tmp/ihatemoney.tar.bz2"
    rm -f "$tarball"

    wget -q -O "$tarball" "$SOURCE_URL" \
        || ynh_die "Unable to download tarball"
    echo "$SHA256 $tarball" | sha256sum -c >/dev/null \
        || ynh_die "Invalid checksum of downloaded tarball"
    test -d $DESTDIR || sudo mkdir $DESTDIR
    sudo tar xaf "${tarball}" -C "$DESTDIR" --strip-components 1\
        || ynh_die "Unable to extract tarball"

    rm -f "$tarball"
}


fix_permissions() {
    local SRC_DIR=$1

    sudo find $SRC_DIR -type f | while read LINE; do sudo chmod 640 "$LINE" ; done
    sudo find $SRC_DIR -type d | while read LINE; do sudo chmod 755 "$LINE" ; done
    sudo chown -R ihatemoney:ihatemoney $SRC_DIR
    sudo chown -R www-data:www-data ${SRC_DIR}/budget/static
}


install_apt_dependencies() {
    sudo apt-get install -y -qq python-dev python-virtualenv supervisor libmysqlclient-dev
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
