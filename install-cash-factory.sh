#!/bin/sh

echo
echo
echo '	-------- CashFactory env patch over vmConsole Alpine --------'
echo '	→ File path c '$(pwd)'/install-cash-factory.sh'
echo '	-------------------------------------------------------------'

# check wheter current user is eq root 
if [ "$EUID" -ne 0 ] 
then 
  	echo;
  	echo '	ⓧ Please run as root (with sudo)';
  	echo;
  	exit
fi

# check wheter its at /root dir as well
if [ "$(pwd)" -ne /root ]
then
	echo;
	echo '	→ Entering /root dir ($HOME)'
	cd /root
fi

# thowww
echo;
echo '	→ Downloading custom CashFactory';
echo;

sleep 1;
cd $HOME;
git clone https://github.com/ropsnap/CashFactory

# bef-last
echo;
echo '	→ Setting up project';
echo;

sleep 1
cd $HOME/CashFactory;

if grep -E 'Ubuntu' /etc/os-release
then
	echo '	Ubuntu Linux detected.'
	echo '	Running ./setup.alp.sh'
	echo;
	
	./setup.sh && echo; echo '	✓ Setup is right done';
fi

if grep -E ‘Alpine’ /etc/os-release
then
	echo '	Alpine Linux detected.'
	echo '	Running ./custom/setup.alp.sh'
	echo;
	
	./setup.alp.sh && echo; echo '	✓ Setup is right done';
fi

# last
echo;
echo '	→ Removing default .env -> creating new empty -> openining it';
echo;

sleep 2

cd $HOME/CashFactory/;
rm $HOME/CashFactory/.env;

nano $HOME/CashFactory/.env;

echo '	→ Run project by → sudo docker-compose up -d';
echo '	→ Turn off by → sudo docker-compose down';
echo
