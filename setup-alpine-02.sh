#!/bin/bash

echo;
echo;
echo '	--------------------- Step [2] ------------------------------'
echo '	→ File path c '$(pwd)'/setup-alpine-02.sh'
echo '	-------------------------------------------------------------'
echo;

sleep 2

echo '	[1] Setting up Alpine (setup-alpine) ------------------------'
echo;
echo '	  * Answer this order: '
echo;
echo '		→ hostname:  localhost'
echo '		→ interface: eth0'
echo '		→ repository: 1'
echo '		→ localhost: valor'
echo '		→ localhost: valor'
echo '		→ password: gag999'
echo;
echo '	 ⌛ Loading...'

sleep 3

alpine-setup && echo '	✓ Success! Please, reboot -----------------------------------'

echo '	[2] Updating and Upgrading packages ------------------------'
echo;

# update
apk update
apk upgrade

echo '	[3] Installing essential packages --------------------------'
echo;
echo '	  * Packages: git, sudo, ca-certificates, curl, gnupg, lsb-release'

# install
apk add sudo
apk add git # needed for download CashFactory project
apk add curl

echo '	[4] Modifying extlinux.conf --------------------------------'
echo;

sleep 1

echo 'console=ttyS0,115200 tsc=unstable nowatchdog' >> /boot/extlinux.conf

echo;
echo '	✓ Success! Please, reboot -----------------------------------'
echo;
