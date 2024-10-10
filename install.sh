#! /bin/bash

#check for sudo privileges
if  [[ $EUID -ne 0 ]] ; then
    echo "Install script needs sudo privileges"
    exit 1
fi

user="$(logname)"

dir=/home/${user}/.flash_drive

#check for older cliflash installation
if [ -d $dir ]; then
    echo "There seem to be an existing cliflash directory : $dir"
    exit 1
fi    

#add script in "correct" place
sudo -u $user mkdir $dir
cp cliflash ${dir}/cliflash

#makes cliflash executable
chmod +x $dir/cliflash

#modify .bashrc
bashrc=/home/${user}/.bashrc
added_content="
#makes cliflash visible
export PATH=${dir}:\$PATH
alias cliflash-cd=\"cd \$(cliflash -p)\"
"
if ! grep -q "cliflash" $bashrc; then
    printf '%s\n' "$added_content" >> $bashrc
fi    
