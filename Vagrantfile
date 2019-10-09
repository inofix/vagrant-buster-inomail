Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"
  config.vm.synced_folder '.', '/vagrant', disabled: true
  config.vm.host_name = "mail00"
  config.vm.provider :libvirt do |libvirt|
    libvirt.driver = "kvm"
    libvirt.memory = 2048
    libvirt.cpus = 2
    libvirt.random :model => 'random'
    libvirt.volume_cache = 'none'
  end
  config.vm.provision "ansible" do |ansible|
    ansible.host_key_checking = "false"
    ansible.playbook = "ansible/playbook.yml"
  end
end
