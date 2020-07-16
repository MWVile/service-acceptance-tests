# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "landregistry/centos"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "2048"
    vb.cpus = "2"

  end
  #
  config.vbguest.auto_update = false

  # View the documentation for the provider you are using for more
  # information on available options.
  # config.vm.provision "shell", path: "provision.sh"

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL

    ##### Configure System #####

    sudo yum update epel-release python2 curl ntp -y
    yum install -y git
    yum install -y centos-release-scl
    yum install -y rh-ruby24*
    yum install -y libxml2-devel
    echo 'export PATH="/opt/rh/rh-ruby24/root/usr/local/bin:/opt/rh/rh-ruby24/root/usr/bin:$PATH"' >> ~/.bashrc
    echo 'export PATH="/opt/rh/rh-ruby24/root/usr/local/bin:/opt/rh/rh-ruby24/root/usr/bin:$PATH"' >> /home/vagrant/.bashrc
    echo 'export LD_LIBRARY_PATH="/opt/rh/rh-ruby24/root/usr/local/lib64:/opt/rh/rh-ruby24/root/usr/lib64"' >> ~/.bashrc
    echo 'export LD_LIBRARY_PATH="/opt/rh/rh-ruby24/root/usr/local/lib64:/opt/rh/rh-ruby24/root/usr/lib64"' >> /home/vagrant/.bashrc
    echo 'cd /vagrant' >> /home/vagrant/.bashrc
    source /home/vagrant/.bashrc
    ##### Configure Gems #####
    cd /vagrant
    gem install bundler
    bundler install

    sudo yum -y install https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm

    cd /tmp
    wget -N https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip -P ~/
    unzip ~/chromedriver_linux64.zip -d ~/
    sudo mv -f ~/chromedriver /usr/local/bin/chromedriver
    sudo chown root:root /usr/local/bin/chromedriver
    sudo chmod 0755 /usr/local/bin/chromedriver


  SHELL
end
