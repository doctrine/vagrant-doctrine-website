# Doctrine Develop VM

Clone the repository:

    git clone git@github.com:doctrine/doctrine-developvm.git
    cd doctrine-developvm

Start the VM:

    vagrant up

SSH to the VM:

    vagrant ssh

Build the Doctrine website:

    cd /vagrant/data/doctrine-website-sphinx/site
    tinker -b

On your host machine running the vagrant VM add this to your `/etc/hosts` file:

    127.0.0.1 lcl.doctrine-project.org

Access the Doctrine website locally by accessing `http://lcl.doctrine-project.org:4567/` in your browser.
