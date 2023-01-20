#!/bin/bash

echo;
echo;
echo ' --------------------- Step [2] ------------------------------'
echo ' → File path c '$(pwd)'/setup-alpine-02.sh'
echo ' -------------------------------------------------------------'
echo;

sleep 2

echo ' [1] Setting up Alpine (setup-alpine) ------------------------'
echo;
echo ' * Answer this order: '
echo;
echo '	→ Hostname:  localhost'
echo '	→ Interface: eth0'
echo '	→ DNS Domain: enter'
echo '	→ DNS Servers: enter'
echo '	→ Password: gag999'
echo '	→ Timezone: UTC'
echo '	→ Proxy: none'
echo '	→ NTP client: chrony'
echo '	→ Mirror: 1'
echo '	→ Setup- a user: no'
echo '	→ SSH Server: openssh'
echo '	→ Allow root ssh login: yes'
echo '	→ root ssh key/URL : none'
echo '	→ Disk: none'
echo '	→ Store configs: none'
echo '	→ APK Cache directory: enter'



echo;
echo ' ⌛ Loading...'
echo;

sleep 3

setup-alpine;

echo;
echo ' [2] Updating and Upgrading packages ------------------------'
echo;

sleep 1

# update
apk update
apk upgrade

echo ' [3] Installing essential packages --------------------------'
echo ' → Packages → git, sudo, curl'

sleep 1

# install
apk add sudo
apk add git # needed for download CashFactory project
apk add curl

echo ' [4] Modifying extlinux.conf --------------------------------'
echo;

sleep 1

echo 'console=ttyS0,115200 tsc=unstable nowatchdog' >> /boot/extlinux.conf

echo ' ✓ Success --------------------------------------------------'
echo
echo ' ⌛ Rebooting withing 6 seconds... '
echo;

sleep 6

reboot;
