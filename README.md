## cliflash is a small bash script to mount flash usb or ssd. 
Written mostly as an exercise i had fun creating an install script as well, managing permissions and so on...

### This scrpit has three functionnalities :
 - mount a partition : -m or --mount
 - unmount : -u or --unmount
 - path : -p or --path

Once a partition is mounted use alias cliflash-cd to open the mounted directory

## Exemple :
cliflash --mount  
Mounting  
(list of disks)  
Choose a partition to mount in list above : sda1  
  
cliflash-cd
