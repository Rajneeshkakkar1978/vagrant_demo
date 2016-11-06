# -*- mode: ruby -*-
# vi: set ft=ruby :

		 
#Linux Mode
#Vagrant.configure("2") do |config|
#   config.vm.box = "hashicorp/precise64"
#   config.vm.provision :shell, path: "linuxProvisioning.sh"
#   config.vm.network :forwarded_port, guest: 8080, host: 4567
#end

#Windows Mode
Vagrant.configure("2") do |config|
	config.vm.box = 'opentable/win-2012r2-standard-amd64-nocm'
	config.vm.guest = :windows
	config.vm.boot_timeout = 300
	config.vm.communicator = "winrm"
	config.winrm.username = 'vagrant'
	config.winrm.password = 'vagrant'

        config.vm.provider :virtualbox do |vb|
                vb.name = "Win2012_Server"
		vb.gui = true
		vb.customize ["modifyvm", :id, "--memory", "1024"]
		vb.customize ["modifyvm", :id, "--vram", "64"]
		vb.customize ["modifyvm", :id, "--clipboard", "bidirectional"]
	end
  
	config.vm.network :forwarded_port, guest: 8080, host: 4567

        config.vm.provision "shell", inline: <<-SCRIPT
             Set-Item WSMan:\\localhost\\Shell\\MaxShellsPerUser -Value 100
             Set-Item WSMan:\\localhost\\Service\\MaxConcurrentOperationsPerUser -Value 100
        SCRIPT

	config.vm.provision :shell, path: "windowsProvisioning_Part1.cmd"
        config.vm.provision :shell, path: "windowsProvisioning_Part2.cmd"

end
