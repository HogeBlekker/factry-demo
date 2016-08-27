# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|

  # Setup deb and gem caching for development
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
    config.cache.enable :apt
  end

  config.vm.provider "virtualbox"

  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'

  config.vm.box = "debian/jessie64"
  config.vm.box_version = "8.5.1"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "./code", "/home/vagrant/code"

  config.vm.provision "shell", path: "provision.sh"
end
