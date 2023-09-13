## Resize a running partition on Debian/Ubuntu

## ssh into the system, and run:
sudo su -
cfdisk

## Choose the partition to extend and select "Resize"
## Set the "New size"
## After pressing enter, you'll see screen with the following note "Partition [someNumber] resized": 
## Next select "Write" (save) your changes:  
## Quit cfdisk. the message "syncing disks" will appear  

# Run below command to get PV (Physical Volume) name (Ex: /dev/sda1)
pvs

## Resize the PV
pvresize <PV name>   

##Run below command to get the logical volume name (Filesystem value of / row; ex: /dev/mapper/ubuntu--vg-root)
df -h

## Expand logical volume (ex : sudo lvextend -r -l +100%FREE /dev/mapper/ubuntu--vg-ubuntu--lv):
lvextend -r -l +100%FREE <logical volume name>   

## Recheck the filesystem
df -h
