# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  config.vm.network :forwarded_port, guest: 80, host: 8000
  config.vm.network :private_network, ip: "192.168.33.33"
  config.vm.hostname = "www.dev.com"
  config.hostsupdater.aliases = ["dev.com", "phpmyadmin.dev.com"]
  config.vm.synced_folder "www/", "/var/www", owner: "www-data", group: "www-data"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  config.vm.provision :chef_solo do |chef|
     chef.cookbooks_path = ["chef/site-cookbooks", "chef/cookbooks"]
     chef.roles_path = "chef/roles"
     chef.add_role "webserver"
	 chef.add_role "nodeserver"
  end

end
