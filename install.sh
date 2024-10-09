#! /bin/bash


#check for sudo privileges
if [[ $EUID -ne 0 ]]; then
    echo "Install script needs sudo privileges"
    exit 1
fi

user="$(logname)"

dir=/home/${user}/.flash_drive

#add script in "correct" place
mkdir $dir
cp cliflash ${dir}/cliflash

#makes cliflash executable
chmod +x $dir/cliflash

#modify .bashrc
added_content="
#makes cliflash visible
export PATH=${dir}:\$PATH
alias cliflash-cd=\"cd \$(cliflash -p)\"
"
printf '%s\n' "$added_content" >> /home/${user}/.bashrc
