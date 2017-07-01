# archlinux

Archlinux installation built with [mkimage.sh](https://github.com/rafaelsoaresbr/archlinux/blob/master/mkimage.sh), the build script is the same as the official [mkimage.sh](https://github.com/docker/docker/blob/master/contrib/mkimage.sh).
Timezone is set to utc and utf-8 locale is used. This repository provides archlinux images. The tags listed below may be used for specific builds.
The script is based on the official one, to create your own base image (on Arch Linux) run:

```
# ./mkimage.sh mkimage-arch.sh YYYY/MM/DD
```
* This will generate a compressed tarball `archlinux-YYYY-MM-DD.tar.xz` that you can use on your own Dockerfile (requires arch-install-scripts and expect).

Then you can build and run you Docker image with (requires Docker):

```
# docker build -t archlinux:YYYY-MM-DD .
```

```
# docker run --rm -it archlinux:YYYY-MM-DD /bin/bash
```


# Snapshot repository
To keep docker containers consistent it uses official repositories snapshots stored at the [Arch Linux Archive](https://archive.archlinux.org/).
This allows installing new packages at a precise moment.

# Usage

Synchronizing the pacman repository's by running pacman -Sy or upgrading with pacman -Syu is unnecessary and will have no impact.
For production containers a specific build tag should be used. Testing should be done before updating the build tag in production containers to ensure the newer packages work with your codebase.

```
$ docker run --rm -ti rafaelsoares/archlinux /bin/bash
```

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
    2016-06-17
    2016-04-27
    2016-04-21
    2016-04-17
    2016-04-13
    2016-04-09
    2016-04-05
