#!/bin/bash    

#set -x

sudo ip addr flush dev eth1
sudo ip addr add $2/24 dev eth1
sudo ip link set eth1 up

export INSTALL_K3S_EXEC="agent --server https://$1:6443 --token-file /vagrant/k3s_token --node-ip=$2"

echo "Installing k3s as agent"

while [ ! -f /vagrant/k3s_token ]; do
    echo "Waiting for token file to be created"
    sleep 1
done
curl -sfL https://get.k3s.io | sh -
echo CURRENT_IP = $(ip a show eth1 | grep "inet " | awk '{print $2}' | cut -d/ -f1)
rm -rf /vagrant/k3s_token

echo "k3s agent installed"