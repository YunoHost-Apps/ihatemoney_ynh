#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

pip_dependencies=(
    'ihatemoney==5.2.0'
    'gunicorn>=20.0'
    'PyMySQL>=0.9,<1.1'
)

### Constants

#=================================================
# PERSONAL HELPERS
#=================================================

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


#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
