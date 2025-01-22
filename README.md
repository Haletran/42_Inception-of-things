# Inception_of_things

## COMMAND

- `vagrant up` : launch the VM link to the Vagrantfile
- `vagrant halt` : Shutdown the VM link to the Vagrantfile
- `vagrant ssh $NAME` : Connect to VM via SSH with his name
- `vagrant provision` : Update the VM with the modifications in the Vagrantfile
- `vboxmanage list vms` : list all vms created by vagrant on the vbox
- `kubectl get nodes` : list all the nodes
- `vagrant reload` : to delete all machines and re-up them
- `vagrant destroy [-f]` : to destroy vms
- `vagrant validate` - checking the validity of the config file

```bash
#to delete all the vms
VBoxManage list vms | awk -F'"' '{print $2}' | while read vm; do VBoxManage unregistervm "$vm" --delete; done
```

## USEFUL

```bash
#faster DL speed
vagrant plugin install vagrant-cachier 
```

> For the ssh connection, use the private key in the .vagrant folder, located at :
`.vagrant/machines/NAME_OF_THE_VM/virtualbox/private_key`

```bash
ssh -i .vagrant/machines/bapasquiS/virtualbox/private_key vagrant@192.168.56.110
ssh -i .vagrant/machines/bapasquiSW/virtualbox/private_key vagrant@192.168.56.111
```

```bash
#launch the project on the main pc (this could take a while), this will slow down your computer like crazy
NIXPKGS_ALLOW_UNFREE=1 nix-shell flake.nix
```
## P2

- create a cluster `k3d cluster create NAME [flags]` or that `kubectl create namespace NAME`
- create 3 pod (app1, app2, app3) with the yaml file (example : [config](https://gist.githubusercontent.com/fransafu/4075cdcaf2283ca5650e71c7fd8335cb/raw/19d7cfa0f82f1b66af6e39389073bcb0108c494c/simple-rest-golang.yaml))
- Apply the yaml file `k3s kubectl apply -f config.yaml`
- Check the cluster and the app : `k3s kubectl get ingress,svc,pods -n NAME`
- Check if it work : `curl -X GET http://YOUR_IP`
