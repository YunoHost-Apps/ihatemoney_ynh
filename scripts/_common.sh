#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

pip_dependencies=(
    'ihatemoney==6.1.3'
    'gunicorn>=20.0'
    'PyMySQL>=0.9,<1.1'
)


#=================================================
# PERSONAL HELPERS
#=================================================

wait_gunicorn_start() {
    # line_match isn't enough because ihatemoney may stop if database upgrades
    for _ in {1..20}; do
        test -S /tmp/budget.gunicorn_$app.sock && break
        sleep 1
    done
}

__ynh_python_venv_setup() {
    local -A args_array=( [d]=venv_dir= [p]=packages= )
    local venv_dir
    local packages
    ynh_handle_getopts_args "$@"

    python3 -m venv --system-site-packages "$venv_dir"

    IFS=" " read -r -a pip_packages <<< "$packages"
    "$venv_dir/bin/python3" -m pip install --upgrade pip "${pip_packages[@]}"
}

__ynh_python_venv_get_site_packages_dir() {
    local -A args_array=( [d]=venv_dir= )
    local venv_dir
    ynh_handle_getopts_args "$@"

    "$venv_dir/bin/python3" -c 'import sysconfig; print(sysconfig.get_paths()["purelib"])'
}

# shellcheck disable=SC2016
HASH_PASSWORD_PYTHON='
import sys, hashlib, uuid
password = sys.argv[1].encode("utf-8")

salt_text = uuid.uuid4().hex
salt = salt_text.encode("utf-8")
pbkdf2_iterations = 600000

hash = hashlib.pbkdf2_hmac("sha256", password, salt, pbkdf2_iterations).hex()
print(f"pbkdf2:sha256:{pbkdf2_iterations}${salt_text}${hash}")
'

_hash_password() {
    password=$1
    python3 -c "$HASH_PASSWORD_PYTHON" "$password"
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
