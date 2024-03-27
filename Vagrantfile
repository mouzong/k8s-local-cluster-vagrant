# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.hostmanager.enabled = true 
  config.hostmanager.manage_host = true

  ### Master Node ###
  config.vm.define "master" do |master|
    master.vm.box = "ubuntu/jammy64"
    master.vm.hostname = "master"
    master.vm.network "private_network", ip: "192.168.56.10"
    master.vm.provider "virtualbox" do |vb|
      vb.memory = 4096
      vb.cpus = 2
      vb.name = "master"
    end
    master.vm.provision "shell", path: "provision.sh"
    # master.vm.provision "shell", path: "master-provision.sh"
  end

  ### Worker Node 1 ###
  config.vm.define "node2" do |node2|
    node2.vm.box = "ubuntu/jammy64"
    node2.vm.hostname = "node2"
    node2.vm.network "private_network", ip: "192.168.56.12"
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
      vb.name = "node2"
    end

    node2.vm.provision "shell", path: "provision.sh"

  end

  ### Worker Node 2 ###
  config.vm.define "node1" do |node1|
    node1.vm.box = "ubuntu/jammy64"
    node1.vm.hostname = "node1"
    node1.vm.network "private_network", ip: "192.168.56.11"
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = 2048
      vb.cpus = 2
      vb.name = "node1"
    end
    node1.vm.provision "shell", path: "provision.sh"
  end
end
