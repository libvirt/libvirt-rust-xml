# THIS FILE WAS AUTO-GENERATED
#
#  $ lcitool manifest ci/manifest.yml
#
# https://gitlab.com/libvirt/libvirt-ci

FROM docker.io/library/alpine:3.19

RUN apk update && \
    apk upgrade && \
    apk add \
        ca-certificates \
        cargo \
        git \
        rust \
        rust-clippy && \
    apk list --installed | sort > /packages.txt

ENV LANG "en_US.UTF-8"
