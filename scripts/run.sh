#!/bin/sh

## ------------------------
## Install Dependencies Required for this script

sudo apt-get update
sudo apt install -y git ansible 

source scripts/clone-repo.sh
