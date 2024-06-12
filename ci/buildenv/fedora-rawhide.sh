# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

function install_buildenv() {
    dnf update -y --nogpgcheck fedora-gpg-keys
    dnf distro-sync -y
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
