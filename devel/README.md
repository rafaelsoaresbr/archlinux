# archlinux
Archlinux (base-devel) Docker image with official repositories snapshots

# Overview
Archlinux installation built with mkimage.sh, available at https://github.com/rafaelsoaresbr/archlinux.
Timezone is set to utc and utf-8 locale is used. This repository provides archlinux-devel images.

# Snapshot repository
To keep docker containers consistent it uses official repositories snapshots stored at the Arch Linux Archive.
This allows installing new packages at a precise moment.

# Usage

Synchronizing the pacman repository's by running pacman -Sy or upgrading with pacman -Syu is unnecessary and will have no impact.

>docker run --rm -ti rafaelsoares/archlinux-devel /bin/bash

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
