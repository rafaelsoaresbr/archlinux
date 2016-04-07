FROM scratch
MAINTAINER Rafael Soares

ADD minimal/rootfs/archlinux.tar.xz /

# Install base-devel
RUN pacman -S --needed --noprogressbar --noconfirm base-devel git; pacman -Scc --noprogressbar --noconfirm

# Create an unprivileged user
RUN useradd -m guest

# Grant user guest sudo rights
RUN echo 'guest ALL=(ALL) NOPASSWD: /usr/bin/pacman' > \
/etc/sudoers.d/00-allowed

# Change to an unprivileged user
USER guest

# Install pacaur
ADD inst_pacaur.sh /home/guest/inst_pacaur.sh
RUN sh -x ./home/guest/inst_pacaur.sh && rm /home/guest/inst_pacaur.sh

# Build the package
ENTRYPOINT ["/bin/sh","-c"]
