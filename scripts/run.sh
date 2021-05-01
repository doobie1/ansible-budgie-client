#!/bin/sh

## ------------------------
## Install Dependencies Required for this script


PACKAGES=(git ansible)
GITREPO="https://github.com/doobie1/ansible-budgie-client.git"

sudo apt-get update

for i in "${PACKAGES[@]}"
do
    if [ $(dpkg-query -W -f='${Status}' $i 2>/dev/null | grep -c "ok installed") -eq 0 ]
    then
        sudo apt-get install $1
    fi
done

[ -d ansible-budgie-client ] && rm -rf ansible-budgie-client ] 
git clone $GITREPO
cd ansible-budgie-client

ansible-playbook -i inventory playbook.yml

