get_os () {
    if grep -q Microsoft /proc/version; then
	echo 'wsl'
    else
	echo 'linux'
    fi
}

get_distro () {
    if grep -q Ubuntu /etc/*-release; then
        echo 'ubuntu'
    fi
    if grep -q Debian /etc/*-release; then
        echo 'debian'
    fi
}

