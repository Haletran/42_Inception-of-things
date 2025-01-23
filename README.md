# Inception_of_things
## COMMANDS

- `vagrant up`: Launch the VM linked to the Vagrantfile.
- `vagrant halt`: Shutdown the VM linked to the Vagrantfile.
- `vagrant ssh $NAME`: Connect to the VM via SSH using its name.
- `vagrant provision`: Update the VM with the modifications in the Vagrantfile.
- `vboxmanage list vms`: List all VMs created by Vagrant on VirtualBox.
- `kubectl get nodes`: List all the nodes.
- `vagrant reload`: Delete all machines and re-up them.
- `vagrant destroy [-f]`: Destroy VMs.
- `vagrant validate`: Check the validity of the config file.

```bash
# To delete all the VMs
VBoxManage list vms | awk -F'"' '{print $2}' | while read vm; do VBoxManage unregistervm "$vm" --delete; done
```

## USEFUL

```bash
# Faster download speed
vagrant plugin install vagrant-cachier 
```

> For the SSH connection, use the private key in the .vagrant folder, located at:
> `.vagrant/machines/NAME_OF_THE_VM/virtualbox/private_key`

```bash
ssh -i .vagrant/machines/bapasquiS/virtualbox/private_key vagrant@192.168.56.110
ssh -i .vagrant/machines/bapasquiSW/virtualbox/private_key vagrant@192.168.56.111
```

```bash
# Launch the project on the main PC (this could take a while), this will slow down your computer like crazy
NIXPKGS_ALLOW_UNFREE=1 nix-shell flake.nix
```

## P2

- Create a cluster: `k3d cluster create NAME [flags]` or `kubectl create namespace NAME`.
- Create 3 pods (app1, app2, app3) with the YAML file (example: [config](https://gist.githubusercontent.com/fransafu/4075cdcaf2283ca5650e71c7fd8335cb/raw/19d7cfa0f82f1b66af6e39389073bcb0108c494c/simple-rest-golang.yaml)).
- Apply the YAML file: `k3s kubectl apply -f config.yaml`.

```bash
k get all
kubectl describe ingress apps-ingress
kubectl -n kube-system logs -l app.kubernetes.io/name=traefik
```

```bash
# Setup domain local name
192.168.56.110 app1.local
192.168.56.110 app2.local
192.168.56.110 app3.local
```


### Summary of their roles in Kubernetes:

1. **Pod**: Group of containers that run your application.
2. **Deployment**: Manages and automates the creation and management of Pods via a ReplicaSet.
3. **ReplicaSet**: Ensures the correct number of Pods are running.
4. **Service**: Connects the Pods to each other or to the outside world.

[The Webpage](https://github.com/paulbouwer/hello-kubernetes)


## P3

[For DOCKER HUB](https://redthunder.blog/2018/04/27/teaching-how-to-get-started-with-kubernetes-deploying-a-hello-world-app/)