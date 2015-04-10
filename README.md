# SCCP development environment

## Usage
Install VirtualBox and Vagrant.
VirtualBox - https://www.virtualbox.org
Vagrant    - https://www.vagrantup.com


Add a Ubuntu box image from Vagrantbox List.
Vagrantbox List 

- http://www.vagrantbox.es
- https://atlas.hashicorp.com/boxes/search?utf8=✓&sort=&provider=&q=ubuntu+14.04

(e.g. Ubuntu14.04 - http://sourceforge.net/projects/flowboard-vagrant-boxes/files/ubuntu-14.04-64bit-chef-2014-05-05.box/download?use_mirror=cznic)

    vagrant box add ubuntu-14.04 ubuntu-14.04-64bit-chef-2014-05-05.box


Clone this repository, and change directory.

    git clone https://github.com/ababup1192/sccp_dev_env.git {YOUR WORK SPACE PATH} && cd {YOUR WORK SPACE PATH}
    
Starts and provisions the vagrant environment.

    vagrant up
    
Access vagrant environment.

    vagrant ssh
    
Stop virtual machine.

    vagrant halt
