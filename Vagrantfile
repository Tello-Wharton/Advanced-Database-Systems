# -*- mode: ruby -*-
# vi: set ft=ruby :


%x(vagrant plugin install vagrant-vbguest) unless Vagrant.has_plugin?('vagrant-vbguest')


Vagrant.configure("2") do |config|

	config.vm.define "ubuntu_14" do |node|

		node.vm.box_url = "https://vagrantcloud.com/ubuntu/trusty64"
		node.vm.box = "ubuntu/trusty64"

		node.vm.provider "virtualbox" do |v|
		  v.name = "ubuntu_14"
		  #v.memory = 8192
		  #v.cpus = 4
		end

		node.vm.network :private_network, ip: "10.211.55.101"
		node.vm.hostname = "10.211.55.101"

		node.vm.provision "shell", path: "scripts/bootstrap.sh"
	end
end
