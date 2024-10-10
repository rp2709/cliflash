This guide will show you how to install cliflash, a simple utility script to mount/unmount/access flash drives

If you don't fancy reading run : sudo bash install.sh

The install script does the following:

- Create a new directory /home/USER/.flash_drive/ and copies all necessary files there.

- Writes at end of .bashrc to add cliflash to PATH and create a cliflash-cd alias


(Optional)
The script needs sudo privilege for mountin and unmounting. You can either just keep entering your password when prompt or :
sudo visudo

and add

USER ALL=(ALL) NOPASSWD: /home/USER/.flash_drive/cliflash
