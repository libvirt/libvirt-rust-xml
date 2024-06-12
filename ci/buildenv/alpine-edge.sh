# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    apk update
    apk upgrade
    apk add \
        ca-certificates \
        cargo \
        git \
        rust \
        rust-clippy
    apk list --installed | sort > /packages.txt
}

export LANG="en_US.UTF-8"
