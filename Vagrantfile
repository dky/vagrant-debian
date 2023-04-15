Vagrant.configure("2") do |config|
  config.vm.box = "starboard/ubuntu-arm64-20.04.5"
  config.vm.box_version = "20221120.20.40.0"
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
     apt-get update
     apt-get install -y gcc net-tools ripgrep git tmux strace htop sysstat jq ltrace
  SHELL

  config.vm.synced_folder "/Users/dky/git", "/home/vagrant/git"
end
