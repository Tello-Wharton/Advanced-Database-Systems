# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

%x(vagrant plugin install vagrant-vbguest) unless Vagrant.has_plugin?('vagrant-vbguest')

Vagrant.configure("2") do |config|

	config.vm.define "ubuntu_14" do |node|

		node.vm.box = "ubuntu/trusty64"
		node.vm.synced_folder ".", "/vagrant", type: "virtualbox"

		node.vm.provider "virtualbox" do |v|
		  v.name = "ubuntu_14"
		  v.memory = 8192
		  v.cpus = 4
		end

		node.vm.network :private_network, ip: "10.211.55.101"
		node.vm.hostname = "10.211.55.101"

		node.vm.provision "shell", path: "scripts/bootstrap.sh"
	end
end
