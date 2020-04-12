#/bin/bash
if [ -f /usr/bin/postman ]
    then
    echo "postman instaled"
    else
    echo "Postman Installing Downloading >>>>>>>>>>>>>>"
    cd $HOME/Download
    wget https://dl.pstmn.io/download/latest/linux64 -O postman-linux-x64.tar.gz
    sudo tar -xzf postman-linux-x64.tar.gz -C /opt
    rm postman*tar.gz
    sudo ln -s /opt/Postman/Postman /usr/bin/postman
    cd /home/$USER/.local/share/applications/
    echo "[Desktop Entry]" > postman.desktop
    echo "Encoding=UTF-8" >>postman.desktop
    echo "Name=Postman" >>postman.desktop
    echo "Exec=postman" >>postman.desktop
    echo "Icon=/opt/Postman/resources/app/assets/icon.png" >>postman.desktop
    echo "Terminal=false" >>postman.desktop
    echo "Type=Application" >>postman.desktop
    echo "Categories=Development" >>postman.desktop
    cd ~
fi
