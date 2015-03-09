# -*- mode: ruby -*-
# # vi: set ft=ruby :
#
Vagrant.configure('2') do |config|
  config.vm.box = "puppet_ubuntu12"
  config.vm.box_url = "http://puppet-vagrant-boxes.puppetlabs.com/ubuntu-server-12042-x64-vbox4210.box"
  config.vm.network  "private_network", ip: "192.168.1.100"
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  #config.vm.network "forwarded_port", guest: 8081, host: 8081
  #config.vm.network "forwarded_port", guest: 2003, host: 2003
  #config.vm.network "forwarded_port", guest: 2003, host: 2003, protocol: 'udp'
  #config.vm.network "forwarded_port", guest: 2004, host: 2004
  #config.vm.network "forwarded_port", guest: 8125, host: 8125, protocol: 'udp'

  config.vm.provider 'virtualbox' do |v|
    v.name = "Graphite"
    v.customize ["modifyvm", :id, "--memory", 1024]
    v.customize ["modifyvm", :id, "--cpus", 2]
  end
  Vagrant.configure("2") do |config|
    config.vm.provision :shell, path: "bootstrap.sh"
  end
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path    = "puppet/modules"
    puppet.manifest_file  = "base.pp"
    puppet.options = "--verbose --debug --trace"
  end
  
end
