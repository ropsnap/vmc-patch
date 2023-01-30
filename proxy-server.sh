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

wget 
echo 'straightforward --port 50510 --auth $(cat ~/proxy-server.auth)

# ------------------------------------------------------------------ 1
echo ' [4] Starting Proxy Server within 9 seconds -------------------'
echo;
echo ' ...or type CRTL + C for skip.'
echo;

sleep 9

straightforward --port 50510 --auth $(cat ~/proxy-server.auth)
