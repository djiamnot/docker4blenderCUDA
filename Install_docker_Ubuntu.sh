#!/bin/bash

sudo -S apt-get remove docker docker-engine docker.io

sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
     "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

sudo apt update
sudo apt-get install docker-ce

#
# Alternatively, just use the curl-able install.sh script provided at https://get.docker.com
#


# Finally,
echo Add group docker to current user
sudo usermod -a -G docker $USER
ls
