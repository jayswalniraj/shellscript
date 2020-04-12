#!/bin/bash
if  [ -f /usr/bin/code ];
then
    echo -e "VScode exist \n" 
else
    echo -e "VScode dosent exist >>>>>>> Downloading \n"
    sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
    sudo dnf check-update -y
    sudo dnf install code -y
fi
