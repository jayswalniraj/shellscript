#!/bin/bash
if  [ -f /usr/bin/code ];
then
    echo -e "VScode exist \n" 
else
    echo -e "VScode dosent exist >>>>>>> Downloading \n"
    sudo curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg 
    sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

    sudo apt-get install apt-transport-https
    sudo apt-get update
    sudo apt-get install code
    rm -rf packages.microsoft.gpg
fi
