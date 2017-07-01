# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "archlinux/archlinux"
  # config.vm.box_check_update = false
  # config.vm.synced_folder "../data", "/vagrant_data"

  # config.vm.provider "virtualbox" do |vb|
  #   vb.gui = true
  #   vb.memory = "1024"
  # end

  config.vm.provision "shell", inline: <<-SHELL
    pacman -Syu --noconfirm arch-install-scripts expect docker
    systemctl enable docker
    systemctl start docker
  SHELL
end
