Vagrant.configure("2") do |config|
  config.vm.define "vm1" do |vm1|
    vm1.vm.box = "ubuntu/focal64"
    vm1.vm.network "forwarded_port", guest: 8080, host: 8080
    vm1.vm.network "forwarded_port", guest: 8089, host: 8089
    vm1.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    vm1.vm.provision "shell", path: "provision.sh"
  end

  config.vm.define "vm2" do |vm2|
    vm2.vm.box = "ubuntu/focal64"
    vm2.vm.network "forwarded_port", guest: 8080, host: 8081
    vm2.vm.network "forwarded_port", guest: 8089, host: 8090
    vm2.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = 1
    end
    vm2.vm.provision "shell", path: "provision.sh"
  end
end
