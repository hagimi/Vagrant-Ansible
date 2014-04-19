
VirtualBox

install homebrew

`$ ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"`

`$ brew install git`

`$ git clone git@github.com:hagimi/Vagrant-Ansible.git vagrant`

install vagrant

`$ cd vagrant`

`$ vagrant up`

`$ vim ~/.ssh/config`

    Host 192.168.33.10
      User vagrant
      UserKnownHostsFile /dev/null
      StrictHostKeyChecking no
      PasswordAuthentication no
      IdentityFile ~/.vagrant.d/insecure_private_key
      IdentitiesOnly yes

`$ brew install python`

`$ pip install ansible`

`$ vim hosts`

    [web-server]
    192.168.33.10

`$ ansible 192.168.33.10 -m ping -i hosts`

`$ ansible-playbook playbook/site.yml -i hosts`

Access http://192.168.33.10/info.php
