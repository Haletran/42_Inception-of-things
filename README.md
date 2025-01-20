# Inception_of_things

## COMMAND

- `vagrant up` : launch the VM link to the Vagrantfile
- `vagrant halt` : Shutdown the VM link to the Vagrantfile
- `vagrant ssh $NAME` : Connect to VM via SSH with his name
- `vagrant provision` : Update the VM with the modifications in the Vagrantfile
- `vboxmanage list vms` : list all vms created by vagrant on the vbox
- `kubctl get nodes` : list all the nodes connected to the controller

```bash
#to delete all the vms
VBoxManage list vms | awk -F'"' '{print $2}' | while read vm; do VBoxManage unregistervm "$vm" --delete; done
```