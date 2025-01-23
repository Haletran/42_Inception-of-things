#!/bin/bash

#set -x

kubectl create namespace dev
kubectl create -f /vagrant/conf/pods/app1.yaml