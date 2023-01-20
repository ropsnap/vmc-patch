#!/bin/bash

echo;
echo ' ------------------ Patch Script → main.sh -------------------';
echo ' → This script makes setup vmc Alpine major settings';
echo ' -------------------------------------------------------------';
echo;

sleep 1

# ----------------------------------------------------------------- 1
echo ' [1] Modifying extlinux.conf ---------------------------------';
echo;

sleep 1

echo 'console=ttyS0,115200 tsc=unstable nowatchdog' >> /boot/extlinux.conf

# ----------------------------------------------------------------- 2
echo ' [2] Setting up autologin ------------------------------------';
echo;

sleep 1

echo 'tty1::respawn:/sbin/agetty --skip-login --nonewline --noissue --autologin $USER --noclear   38400 tty1' >> /boot/extlinux.conf

# ----------------------------------------------------------------- 3
echo ' [3] Setting up Alpine (setup-alpine) ------------------------';
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

# ---------------------------------------------------------------- 4
echo;
echo ' [4] Updating and Upgrading packages ------------------------'
echo;

sleep 1

# update
apk update
apk upgrade

# ---------------------------------------------------------------- 5
echo
echo ' [5] Installing essential packages --------------------------'
echo ' → Packages → git, sudo, curl';
echo;

sleep 1

# install
apk add sudo
apk add git # needed for download CashFactory project
apk add curl && sleep 1;

echo
echo ' ✓ Success --------------------------------------------------'
echo
echo ' ⌛ Rebooting withing 9 seconds... '
echo;

sleep 9

reboot;
