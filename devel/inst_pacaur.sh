#!/usr/bin/env bash
# Install cower
cd /home/guest
git clone https://aur.archlinux.org/cower.git
cd cower
gpg --recv-keys --keyserver hkp://pgp.mit.edu 1EB2638FF56C0C53
makepkg -sci --asdeps --noprogressbar --noconfirm
# Install pacaur
cd /home/guest
git clone https://aur.archlinux.org/pacaur.git
cd pacaur
makepkg -sci --noprogressbar --noconfirm
# cleanup
rm -rf /home/guest/cower/*
rm -rf /home/guest/cower/.git/*
rm -rf /home/guest/cower/.*
rmdir /home/guest/cower/.git
rmdir /home/guest/cower
rm -rf /home/guest/pacaur/*
rm -rf /home/guest/pacaur/.git/*
rm -rf /home/guest/pacaur/.*
rmdir /home/guest/pacaur/.git
rmdir /home/guest/pacaur
