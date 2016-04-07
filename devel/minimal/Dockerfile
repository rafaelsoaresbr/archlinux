FROM scratch
MAINTAINER Rafael Soares

ADD rootfs/archlinux.tar.xz /

# Install base-devel
RUN pacman -S --needed --noprogressbar --noconfirm base-devel git; pacman -Scc --noprogressbar --noconfirm
