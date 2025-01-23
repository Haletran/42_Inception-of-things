#!/bin/bash

#set -x

echo "Generate html files"
mkdir -p /vagrant/confs/html
echo "<h1>App1</h1>" > /vagrant/confs/html/app1/index.html
echo "<h1>App2</h1>" > /vagrant/confs/html/app2/index.html
echo "<h1>App3</h1>" > /vagrant/confs/html/app3/index.html

kubectl apply -f /vagrant/confs/apps.yaml

echo "Waiting for all pods to be running..."
kubectl wait --for=condition=ready pod --all --timeout=600s
sleep 30
echo "DEBUG PRINT"

kubectl get all
kubectl describe ingress apps-ingress
#kubectl -n kube-system logs -l app.kubernetes.io/name=traefik