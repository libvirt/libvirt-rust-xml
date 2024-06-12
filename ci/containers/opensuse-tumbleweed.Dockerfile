# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

FROM registry.opensuse.org/opensuse/tumbleweed:latest

RUN zypper dist-upgrade -y && \
    zypper install -y \
           ca-certificates \
           cargo \
           git \
           glibc-locale \
           rust && \
    zypper clean --all && \
    rpm -qa | sort > /packages.txt

ENV LANG "en_US.UTF-8"
