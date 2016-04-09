# archlinux
Archlinux image with official repositories snapshots

# Overview
Archlinux installation built with mkimage-arch.sh.
Timezone is set to utc and utf-8 locale is used.
This repository provides archlinux, archlinux:XXXX-XX-XX-latest-devel and archlinux:XXXX-XX-XX-latest-devel-minimal images. The tags listed below may be used for specific builds.

# Snapshot repository
To keep docker containers consistent it uses official repositories snapshots stored at the Arch Linux Archive.
This allows installing new packages at a precise moment.

# Usage

Synchronizing the pacman repository's by running pacman -Sy or upgrading with pacman -Syu is unnecessary and will have no impact.
For production containers a specific build tag should be used. Testing should be done before updating the build tag in production containers to ensure the newer packages work with your codebase.

>docker run --rm -ti rafaelsoares/archlinux:latest /bin/bash

>docker run --rm -ti rafaelsoares/archlinux:XXXX-XX-XX-latest-devel /bin/bash

>docker run --rm -ti rafaelsoares/archlinux:XXXX-XX-XX-latest-devel-minimal /bin/bash

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
    2016-04-09{-devel,-devel-minimal}
    2016-04-05{-devel,-devel-minimal}
