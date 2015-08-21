# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "chef/centos-6.5"

  config.vm.provision "shell", inline: <<-SHELL
    sudo yum groupinstall -y "Development Tools"
  SHELL
end
