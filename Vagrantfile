Vagrant.configure("2") do |config|

  config.vm.box = "dky/ubuntu"
  config.vm.box_version = "0.0.2"
  config.vm.hostname = "sandbox"

  config.vm.provider "vmware_desktop" do |v|
      v.ssh_info_public = true
      v.gui = true
      v.linked_clone = false
      v.vmx["ethernet0.virtualdev"] = "vmxnet3"
      v.memory = 8192
      v.cpus = 4
  end

  config.vm.provision "shell", inline: <<-SHELL
     apt-get -y update && apt-get -y upgrade
     apt-get install -y gcc g++ net-tools ripgrep git tmux strace htop sysstat jq ltrace
  SHELL

end
