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