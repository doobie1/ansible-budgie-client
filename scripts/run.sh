#!/bin/sh

## ------------------------
## Install Dependencies Required for this script


PACKAGES=(git ansible)
GITREPO="https://github.com/doobie1/ansible-budgie-client.git"

sudo apt-get update

for i in "${PACKAGES[@]}"
do
    dpkg -s $i || {
        sudo apt install $i
    } 
done

git clone $GITREPO
cd ansible-budgie-client

ansible-playbook -i inventory playbook.yml

