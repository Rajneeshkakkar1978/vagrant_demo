# -*- mode: ruby -*-
# vi: set ft=ruby :

		 
#Linux Mode
#Vagrant.configure("2") do |config|
#	Proxy Settings
#	if !Vagrant.has_plugin?("vagrant-proxyconf") 
#		system('vagrant plugin install vagrant-proxyconf')
#		raise("vagrant-proxyconf installed. Run command again.");
#	end

#	if Vagrant.has_plugin?("vagrant-proxyconf")
#		config.proxy.http = "http://proxy.ebiz.verizon.com:80/"
#		config.proxy.https = "http://proxy.ebiz.verizon.com:80/"
#		config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
#	end
#   config.vm.box = "hashicorp/precise64"
#   config.vm.provision :shell, path: "linuxProvisioning.sh"
#   config.vm.network :forwarded_port, guest: 8080, host: 4567
#end

#Windows Mode
Vagrant.configure("2") do |config|
#	Proxy Settings
#	if !Vagrant.has_plugin?("vagrant-proxyconf") 
#		system('vagrant plugin install vagrant-proxyconf')
#		raise("vagrant-proxyconf installed. Run command again.");
#	end

#	if Vagrant.has_plugin?("vagrant-proxyconf")
#		config.proxy.http = "http://proxy.ebiz.verizon.com:80"
#		config.proxy.https = "http://proxy.ebiz.verizon.com:80"
#		config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
#	end
	
	config.vm.box = 'opentable/win-2008r2-standard-amd64-nocm'
	config.vm.guest = :windows
	config.vm.provider :virtualbox do |vb|
		vb.name = "Win2012R2 AMD64"
	config.vm.boot_timeout = 600
	config.vm.communicator = "winrm"
	end

	config.winrm.username = 'vagrant'
	config.winrm.password = 'vagrant'
  
	config.vm.provider :virtualbox do |vb|
		vb.gui = true
		vb.customize ["modifyvm", :id, "--memory", "1024"]
		vb.customize ["modifyvm", :id, "--vram", "64"]
		vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
	end
  
	config.vm.network :forwarded_port, guest: 8080, host: 4567	
	
	config.vm.provision :shell, path: "windowsProvisioning.cmd"

end
