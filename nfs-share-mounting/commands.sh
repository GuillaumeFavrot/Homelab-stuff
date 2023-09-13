#Share mounting process on a Debian based system

## nfs-common utilities installation
sudo apt-get install nfs-common

## Looking for shares on a specific host
showmount –e <host IP>

## Mounting a share
sudo mount <host IP>:<share absolute path> <mountpoint>

## Unmounting a share
sudo umount <mountpoint>


# Mounting a share on boot
sudo nano /etc/fstab

## Add the following line at the end of the file
<host IP>:<share absolute path> <mountpoint> nfs rw,default,noatime,nodiratime   0   0


