# rubocop:disable MutableConstant,EndOfLine
VAGRANTFILE_API_VERSION = '2'
VAGRANT_JSON = JSON.parse(Pathname(__FILE__).dirname.join('nodes', 'vagrant.json').read)

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = 'mwrock/Windows2016'
  config.omnibus.chef_version = :latest
  config.vm.hostname = 'amccheflocaldev00'

  # Required for NFS to work, pick any local IP
  config.vm.network :private_network, ip: '192.168.1.2'
  config.vm.synced_folder '.', '/vagrant', nfs: true
  config.vm.provider 'virtualbox' do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Customize the amount of memory on the VM:
    vb.memory = '2048'
    vb.cpus = '2'
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks']
    chef.roles_path = 'roles'
    chef.data_bags_path = 'data_bags'
    chef.json = VAGRANT_JSON
  end
end
