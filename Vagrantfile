# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
	config.vm.define "pchekhov" do |subconfig|
		subconfig.vm.box = "jasonc/centos7-32bit"
		subconfig.vm.hostname = "pchekhov"
		subconfig.vm.network "forwarded_port", guest: 80, host: 9900
		subconfig.vm.network "forwarded_port", guest: 22, host: 9999
		subconfig.vm.provider "virtualbox" do |vb|
			vb.name = "pchekhov"
		end
	end
end
