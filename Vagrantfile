# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.network "public_network" , ip: "192.168.0.101"
  config.vm.synced_folder ".", "/vagrant", owner: "vagrant",
  group: "vagrant", mount_options: ["dmask=022", "fmask=033"]
  config.vm.provider :virtualbox do |vb|
    vb.name = "learning-bash"
    vb.memory = 512
    vb.cpus = 1
  end  
end
