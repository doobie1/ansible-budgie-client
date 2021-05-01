#!/bin/sh

## ------------------------
## Install Dependencies Required for this script

sudo apt-get update
sudo apt install -y git ansible 

git clone https://github.com/doobie1/ansible-budgie-client.git

