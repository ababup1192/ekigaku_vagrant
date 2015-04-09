# SCCP development environment

## Usage
Install VirtualBox and Vagrant.
VirtualBox - https://www.virtualbox.org
Vagrant    - https://www.vagrantup.com


Add a Ubuntu box image from Vagrantbox List.
Vagrantbox List - http://www.vagrantbox.es
(e.g. Ubuntu14.04 - https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/14.04/ubuntu-14.04-amd64.box)

    vagrant box add ubuntu-14.04 https://github.com/kraksoft/vagrant-box-ubuntu/releases/download/14.04/ubuntu-14.04-amd64.box


Clone this repository, and change directory.

    git clone https://github.com/ababup1192/sccp_dev_env.git {YOUR WORK SPACE PATH} && cd {YOUR WORK SPACE PATH}
    
Starts and provisions the vagrant environment.

    vagrant up
    
Access vagrant environment.

    vagrant ssh
    
Stop virtual machine.

    vagrant halt
