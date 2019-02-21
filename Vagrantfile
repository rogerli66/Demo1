# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = 'centos/7'
  config.vm.provider "hyperv"
  
  config.ssh.forward_agent = true # So that boxes don't have to setup key-less ssh
  config.ssh.insert_key = false # To generate a new ssh key and don't use the default Vagrant one

  config.hostmanager.enabled = true
  config.hostmanager.manage_guest = true
  config.hostmanager.include_offline = false

  config.vm.synced_folder ".", "/vagrant"

  # common provisioning for all
  config.vm.provision "shell", path: "scripts/init.sh"

  # configure zookeeper cluster
  (1..3).each do |i|
    config.vm.define "zookeeper-#{i}" do |s|

      config.vm.provider "hyperv" do |h|
        h.enable_virtualization_extensions = true
        h.vmname = "zookeeper-#{i}"
        h.memory = 512
        h.maxmemory = 512
        h.cpus = 1
      end

      s.vm.network "private_network", type: "dhcp"

      s.vm.provision "shell", path: "scripts/set-hostname.sh", args:"zookeeper-#{i}"

      s.vm.provision "shell" do |cmd|
        cmd.inline = "echo $1 > /tmp/zookeeper/myid && su -l -c 'cp /vagrant/config/zoo.cfg /opt/zookeeper/conf && zkServer.sh start' zookeeper"
        cmd.args   = ["#{i}"]
      end

      s.vm.provision "shell" do |cmd|
        cmd.inline = "cp /vagrant/config/server${1}.properties /opt/kafka/config/server.properties && chown kafka.kafka /opt/kafka/config/server.properties && su -l -c 'kafka-server-start.sh -daemon /opt/kafka/config/server.properties' kafka"
        cmd.args   = ["#{i}"]
      end

    end
  end

  #config.vm.provider "virtualbox" do |v|
  #  #  This setting controls how much cpu time a virtual CPU can use. A value of 50 implies a single virtual CPU can use up to 50% of a single host CPU.
  #  v.customize ["modifyvm", :id, "--cpuexecutioncap", "50"]
  #  v.memory = 1500
  #end
end
