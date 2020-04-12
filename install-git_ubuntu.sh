!/bin/bash
if [$(git --version |awk '{print $1}' ==git)];
then
echo "git Installed"
else
echo "Git instaling Download >>>>> "
	sudo apt-get update
	sudo apt install git -y
fi
