#!/bin/sh

clear;

echo;
echo ' -------------- Patch Script → cash-factory.sh -----------------';
echo ' → This script setups CashFactory-vmc project on vmc';
echo ' ---------------------------------------------------------------';

sleep 3

# check wheter current user is eq root 
if [ "$EUID" -ne 0 ] 
then 
  	echo;
  	echo ' ⓧ Please run as root (with sudo)';
  	echo;
  	exit
fi


apk add git; # ensure git is installed

# adds docker necessary repositoryes for when run ./setup.sh later
echo 'http://ftp.halifax.rwth-aachen.de/alpine/v3.16/main' >> /etc/apk/repositories
echo 'http://ftp.halifax.rwth-aachen.de/alpine/v3.16/community' >> /etc/apk/repositories
apk update

# thowww ------------------------------------------------------------- 1
echo;
echo ' [1] Downloading custom CashFactory-vmc -------------------------';
echo;

sleep 1;

cd $HOME;
git clone https://github.com/ropsnap/CashFactory-vmc.git

# bef-last ----------------------------------------------------------- 2
echo;
echo ' [2] Setting up project -----------------------------------------'
echo;

sleep 9

bash $HOME/CashFactory-vmc/setup.sh;

echo;
echo ' ✓ Success! ----------------------------------------------------';
echo;
