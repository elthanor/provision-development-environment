# This guide is optimized for Vagrant 1.8 and above.
# Older versions of Vagrant put less info in the inventory they generate.
Vagrant.require_version ">= 1.8.0"

Vagrant.configure("2") do |config|

  config.vm.box = "ubuntu/jammy64"

  # config.vm.provision "ansible_local" do |ansible|
  #   ansible.verbose = "v"
  #   ansible.playbook = "provisioning/playbook.yml"
  # end
  
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "768"
    vb.name = "provision_local_env_ansible_vm"
    vb.cpus = 2
    vb.gui = false
  end

  config.vm.synced_folder ".", "/vagrant", disabled: false

end
