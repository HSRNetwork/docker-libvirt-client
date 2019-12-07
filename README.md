# Docker libvirt-client

This docker image is based on alpine. Only the required package `libvirt-client` is installed.

## Requirements
### KVM installed on the docker host
Pass the libvirt socket as a docker volume to this container.
```
-v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock
```

### Remote URI
Use the remote URIs ([libvirt Connection URIs](https://libvirt.org/uri.html)) to connect to a remote host. You may have to edit `libvirt.conf` or pass the URI as an argument `virsh -c <remote-uri>`

## Run Docker
```
docker run --name libvirtclient -d -v /var/run/libvirt/libvirt-sock:/var/run/libvirt/libvirt-sock hsrnetwork/libvirt-client
```

## Usage
### List all Virtual Machines
```
docker exec libvirtclient virsh list
```

### Connect to console
```
docker exec -it libvirtclient virsh console <vm-name>
```
