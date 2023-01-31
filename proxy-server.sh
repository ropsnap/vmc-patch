#!/bin/sh

clear;

echo;
echo ' ------------- Patch Script → proxy-server.sh -----------------';
echo ' → This script installs and setup auto-start of a Proxy Server';
echo ' --------------------------------------------------------------';
echo;

sleep 3

# ------------------------------------------------------------------ 1

echo ' [1] Fetching ~/tinyproxy.conf file ---------------------------'
echo;

sleep 3

wget https:// tinyproxy.conf

# ------------------------------------------------------------------ 2

echo ' [2] Installing Tinyproxy -------------------------------------'
echo;

sleep 3

apk add tinyproxy --force-broken-world;

echo;
echo ' ✓ tinyproxy successfully installed.'
echo;

# ------------------------------------------------------------------ 5

echo ' [3] Starting Proxy Server first time -------------------------'
echo;
echo ' ...or type CRTL + C for skip.'
echo;

sleep 9

# main command
killall tinyproxy && tinyproxy -c ~/tinyproxy.conf;