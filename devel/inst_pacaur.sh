#!/usr/bin/env bash
# Install cower
cd /home/guest
curl https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz | tar -xzC .
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
makepkg -sci --asdeps --noprogressbar --noconfirm
# Install pacaur
cd /home/guest
curl https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz | tar -xzC .
makepkg -sci --noprogressbar --noconfirm
# cleanup
rm -rf /home/guest/cower/*
rm -rf /home/guest/cower/.*
rmdir /home/guest/cower
rm -rf /home/guest/pacaur/*
rm -rf /home/guest/pacaur/.*
rmdir /home/guest/pacaur
