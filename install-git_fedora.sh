#!/bin/bash
if [ -f /usr/bin/git ]
then
echo "git Installed"
else
echo "Git instaling Download >>>>> "
	sudo yum update -y
	sudo dnf install git -y
fi
