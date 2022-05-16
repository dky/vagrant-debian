Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-11"
  config.vm.box_check_update = true
  config.vm.hostname = "sandbox"

  config.vm.network "public_network", :bridge => "en0: Wi-Fi (AirPort)", ip: "192.168.1.10"

  config.vm.provider "virtualbox" do |v|
    v.name = "sandbox"
    v.memory = 3096
    v.cpus = 4
  end

  config.vm.provision "shell", inline: <<-SHELL
     apt-get update
     apt-get install -y gcc net-tools ripgrep git tmux strace htop sysstat jq ltrace
  SHELL

  Dir.glob("provision/*.sh").each do |script|
    config.vm.provision "shell", path: script
  end
end
