#!/bin/bash

clear;

echo;
echo ' ------------------ Patch Script → proxy-server.sh ------------';
echo ' → This script installs and setup auto-start of a Proxy Server';
echo ' --------------------------------------------------------------';
echo;

sleep 3

# ------------------------------------------------------------------ 1
echo ' [1] Checking ~/proxy-server.auth file ------------------------'
echo;

sleep 3

AUTH_FILE=~/proxy-server.auth;

if [  -f "$AUTH_FILE" ]; then
    echo;
else 
    
    PUSER=$RANDOM | md5sum | head -c 4;
    PPASS=$RANDOM | md5sum | head -c 8;

    echo ' ...creating Proxy Server auth file ~/proxy-server.auth';
    echo;

    # crates and wirtes proxy CLI auth arg
    touch ~/proxy-server.auth
    echo '"'$($PUSER):$($PPASS)'"' >> ~/proxy-server.auth

fi

# ------------------------------------------------------------------ 2
echo ' [2] Installing essential packages and nodejs modules ---------'
echo;

sleep 3

# install 
apk add nodejs npm && echo;
npm install -g straightforward pm2 && echo;

echo;
echo ' ✓ nodejs, npm, straightforward & pm2 successfully installed.'

# ------------------------------------------------------------------ 1
echo ' [3] Installing native commands for manage Proxy Server -------'
echo;

sleep 3

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/bin/proxy-server-start
wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/bin/proxy-server-stop
wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/bin/proxy-server-status

mv ./proxy-server-start /usr/local/bin/proxy-server-start
mv ./proxy-server-stop /usr/local/bin/proxy-server-stop
mv ./proxy-server-status /usr/local/bin/proxy-server-status

echo ' ✓ Proxy Server commands installed.'
echo;
echo ' → proxy-server-start'
echo ' → proxy-server-stop'
echo ' → proxy-server-status'
echo;

# ------------------------------------------------------------------ 1
echo ' [4] Installing native commands for manage Proxy Server -------'
echo;

sleep 3

echo $HOME/.bashrc >> proxy-server-start

# ------------------------------------------------------------------ 1
echo ' [5] Starting Proxy Server first time -------------------------'
echo;
echo ' ...or type CRTL + C for skip.'
echo;

sleep 9

proxy-server-start;