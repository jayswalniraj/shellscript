#!/bin/bash
if [ -f /usr/bin/unzip ]
    then
    echo "unzip Already installed"
    else
    echo "unzip instaling  Downloading >>>>>>>>>>>>>>>>>>>>>>."
    sudo apt-get install unzip
fi