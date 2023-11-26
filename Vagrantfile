# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    # Use the VMware Workstation provider
    config.vm.provider "vmware_workstation" do |v|
      # Specify the Vagrant box for Ubuntu 22.04
      v.vmx["ethernet0.virtualDev"] = "vmxnet3"
      v.vmx["memsize"] = "1024"  # Adjust the memory size as needed
      v.vmx["numvcpus"] = "1"    # Adjust the number of CPUs as needed
    end
  
    # Configure the first virtual machine
    config.vm.define "ubuntu1" do |ubuntu1|
      ubuntu1.vm.box = "generic/ubuntu2204"
      ubuntu1.vm.hostname = "ubuntu1"

    end
  
    # Configure the second virtual machine
    config.vm.define "ubuntu2" do |ubuntu2|
      ubuntu2.vm.box = "generic/ubuntu2204"
      ubuntu2.vm.hostname = "ubuntu2"
     
    end
  end
  