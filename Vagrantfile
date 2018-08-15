# rubocop:disable MutableConstant,EndOfLine
VAGRANTFILE_API_VERSION = '2'
VAGRANT_JSON = JSON.parse(Pathname(__FILE__).dirname.join('nodes', 'vagrant.json').read)

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  Vagrant.has_plugin?('vagrant-cachier') do
    config.cache.scope = :box
  end

  config.vm.box = 'mwrock/Windows2016'
  config.omnibus.chef_version = :latest
  config.vm.hostname = 'amccheflocaldev00'

  # Required for NFS to work, pick any local IP
  config.vm.network :private_network, ip: '192.168.1.2'
  config.vm.synced_folder '.', '/vagrant', nfs: true
  config.vm.provider 'virtualbox' do |vb|
    host = RbConfig::CONFIG['host_os']
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
    # Give VM 1/4 system memory
    if host =~ /darwin/
      # sysctl returns Bytes and we need to convert to MB
      mem = `sysctl -n hw.memsize`.to_i / 1024
    elsif host =~ /linux/
      # meminfo shows KB and we need to convert to MB
      mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i
    elsif host =~ /mswin|mingw|cygwin/
      # Windows code via https://github.com/rdsubhas/vagrant-faster
      mem = `wmic computersystem Get TotalPhysicalMemory`.split[1].to_i / 1024
    end
    # Customize the amount of memory on the VM:
    mem = mem / 1024 / 4
    vb.customize ['modifyvm', :id, '--memory', mem]
    vb.cpus = '2'
  end

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ['cookbooks']
    chef.roles_path = 'roles'
    chef.data_bags_path = 'data_bags'
    chef.json = VAGRANT_JSON
  end
end
