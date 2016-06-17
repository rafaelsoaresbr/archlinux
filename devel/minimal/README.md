# archlinux
Archlinux Docker image with official repositories snapshots (base-devel)

# Overview
Archlinux Docker image with official repositories snapshots (base-devel), available at https://github.com/rafaelsoaresbr/archlinux.
Timezone is set to utc and utf-8 locale is used. This repository provides archlinux images (FROM [rafaelsoaresbr/archlinux](https://hub.docker.com/r/rafaelsoares/archlinux/)) plus base-devel.

# Snapshot repository
To keep docker containers consistent it uses official repositories snapshots stored at the Arch Linux Archive.
This allows installing new packages at a precise moment.

# Usage

Synchronizing the pacman repository's by running pacman -Sy or upgrading with pacman -Syu is unnecessary and will have no impact.
For production containers a specific build tag should be used. Testing should be done before updating the build tag in production containers to ensure the newer packages work with your codebase.

>docker run --rm -ti rafaelsoares/archlinux-devel-minimal /bin/bash

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
