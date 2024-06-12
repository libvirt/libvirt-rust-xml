# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    zypper dist-upgrade -y
    zypper install -y \
           ca-certificates \
           cargo \
           git \
           glibc-locale \
           rust
    rpm -qa | sort > /packages.txt
}

export LANG="en_US.UTF-8"
