#!/bin/bash
if [ -f /usr/bin/unzip ]
    then
    echo "unzip Already installed"
    else
    echo "unzip instaling  Downloading >>>>>>>>>>>>>>>>>>>>>>."
    sudo yum update -y
    sudo dnf install unzip -y
fi
