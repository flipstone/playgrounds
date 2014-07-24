# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

FLIPSTONE_DOCKER_FILE = "#{ENV['HOME']}/.flipstone_docker_host/Vagrantfile"
SANDBOX_PATH = File.join File.dirname(__FILE__), 'sandbox'

def configure_playground(image)
  Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.provider "docker" do |d|
      d.cmd     = ["/sbin/my_init", "--enable-insecure-key"]
      d.image   = image
      d.has_ssh = true

      if File.exist? FLIPSTONE_DOCKER_FILE
        d.vagrant_vagrantfile = FLIPSTONE_DOCKER_FILE
      end
    end

    config.vm.boot_timeout = 10
    config.vm.synced_folder SANDBOX_PATH, "/home/vagrant/sandbox"
    config.ssh.private_key_path = "../phusion.key"
  end
end
