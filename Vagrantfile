Vagrant.configure("2") do |o|
	o.ssh.insert_key = true
	o.vm.box = "ubuntu/xenial64"
	ubuntu_box = o.vm.box

	o.vm.define "host1" do |r|
		r.vm.box = ubuntu_box
		r.vm.hostname = "node1"
		r.vm.provider "virtualbox" do |vb|
			vb.cpus = 1
			vb.memory = 1024
		end
		r.vm.provision "docker"
    # r.vm.provision :shell, :path => "install_docker.sh"
	end
end
