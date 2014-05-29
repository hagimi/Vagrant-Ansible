#!/usr/bin/env bash

if ! [ `which ansible` ]; then
    sudo yum update -y
    sudo yum install -y ansible
    cp /vagrant/playbook/servers /home/vagrant
    chmod 644 /home/vagrant/servers
fi

ansible-playbook -i /home/vagrant/servers /vagrant/playbook/site.yml
