# archlinux
Archlinux Docker image with official repositories snapshots

# Overview
Archlinux installation built with mkimage.sh, available at https://github.com/rafaelsoaresbr/archlinux.
Timezone is set to utc and utf-8 locale is used. This repository provides archlinux images. The tags listed below may be used for specific builds.

# Snapshot repository
To keep docker containers consistent it uses official repositories snapshots stored at the Arch Linux Archive.
This allows installing new packages at a precise moment.

# Usage

Synchronizing the pacman repository's by running pacman -Sy or upgrading with pacman -Syu is unnecessary and will have no impact.
For production containers a specific build tag should be used. Testing should be done before updating the build tag in production containers to ensure the newer packages work with your codebase.

>docker run --rm -ti rafaelsoares/archlinux /bin/bash

Sample project that uses this image to build an AUR package (Travis-CI):

https://github.com/rafaelsoaresbr/package-query

# Excluded base packages
    cryptsetup
    device-mapper
    dhcpcd
    iproute2
    jfsutils
    linux
    lvm2
    man-db
    man-pages
    mdadm
    nano
    netctl
    openresolv
    pciutils
    pcmciautils
    reiserfsprogs
    s-nail
    systemd-sysvcompat
    usbutils
    vi
    xfsprogs

# Build tags

    latest
    2016-04-13
    2016-04-09
    2016-04-05
