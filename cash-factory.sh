#!/bin/sh

clear;

echo;
echo ' -------------- Patch Script → cash-factory.sh -----------------';
echo ' → This script setups CashFactory project on vmc';
echo ' ---------------------------------------------------------------';
echo;

sleep 3

# check wheter current user is eq root 
if [ "$EUID" -ne 0 ] 
then 
  	echo;
  	echo ' ⓧ Please run as root (with sudo)';
  	echo;
  	exit
fi

# check wheter its at /root dir as well
if [ $(pwd) != /root ]
then
	echo;
	echo ' → Entering /root dir ($HOME)'
	cd /root
fi

# thowww
echo;
echo ' [1] Downloading custom CashFactory ----------------------------';
echo;

sleep 1;
cd $HOME;
git clone https://github.com/ropsnap/CashFactory

# bef-last
# thowww
echo;
echo ' [2] Setting up project ----------------------------------------'
echo;

sleep 1
cd $HOME/CashFactory;

if grep -E 'Ubuntu' /etc/os-release
then
	echo ' → Ubuntu Linux detected.'
	echo ' → Running ./setup.alp.sh'
	echo;
	
	./setup.sh;
fi

if grep -E ‘Alpine’ /etc/os-release
then
	echo ' → Alpine Linux detected.'
	echo ' → Running ./custom/setup.alp.sh'
	echo;
	
	./setup.alp.sh;
fi

echo ' [3] Openning default .env for edit or confirm -----------------';
echo;

sleep 3

cd $HOME/CashFactory/;
nano $HOME/CashFactory/.env;

# last
echo ' ✓ Setup is right done -----------------------------------------';
echo;
echo ' → Run project  → cd $HOME/CashFactory'
echo ' → Turn on by   → sudo docker-compose up -d';
echo ' → Turn off by  → sudo docker-compose down';
echo
