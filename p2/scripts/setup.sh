#!/bin/bash

#set -x


kubectl apply -f /vagrant/confs/apps.yaml
echo "DEBUG PRINT"

kubectl get all
kubectl describe ingress apps-ingress
#kubectl -n kube-system logs -l app.kubernetes.io/name=traefik