#!/bin/bash
#sudo wget -qO - https://raw.githubusercontent.com/CybrNight/CSE165-LabTools/master/install.sh | sudo bash

#Define GitHub root
source=https://raw.githubusercontent.com/CybrNight/CSE165-LabTools/master

if [ -d "LabTools" ] ; then
exit
fi

#Define colors
black="$(tput setaf 0)"
red="$(tput setaf 9)" 
green="$(tput setaf 10)"
yellow="$(tput setaf 11)" 
blue="$(tput setaf 12)"
purple="$(tput setaf 13)" 
cyan="$(tput setaf 14)" 
white="$(tput setaf 15)" 
bold=$(tput bold) 
RESET=$(tput reset) 

mkdir LabTools
cd LabTools

mkdir template
wget -qO template/t.cpp $source/t.cpp
wget -qO template/t_std.cpp $source/t_std.cpp
wget -qO lab_gen.sh $source/lab_gen.sh
chmod +x lab_gen.sh

echo Installed!
printf "Navigate to LabTools folder in this directory and use ./lab_gen.sh"