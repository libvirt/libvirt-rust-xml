# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    dnf distro-sync -y
    dnf install 'dnf-command(config-manager)' -y
    dnf config-manager --set-enabled -y crb
    dnf install -y epel-release
    dnf install -y epel-next-release
    dnf install -y \
        ca-certificates \
        cargo \
        clippy \
        git \
        glibc-langpack-en \
        rust \
        rust-std-static
    rpm -qa | sort > /packages.txt
}

export LANG="en_US.UTF-8"
