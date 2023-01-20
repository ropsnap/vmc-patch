#!/bin/bash

echo;
echo ' ------------------ Patch Script → tailscale.sh ---------------';
echo ' → This script makes setup tailscale daemon as VPN client';
echo ' --------------------------------------------------------------';
echo;

sleep 3

# ------------------------------------------------------------------ 1
echo ' [1] Downloading and installing Tailscale CLI -----------------'
echo;

sleep 3

curl -fsSL https://tailscale.com/install.sh | sh

# ------------------------------------------------------------------ 2
echo
echo ' [2] Enabling IP forwarding -----------------------------------'
echo;

sleep 3

echo 'net.ipv4.ip_forward = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
echo 'net.ipv6.conf.all.forwarding = 1' | sudo tee -a /etc/sysctl.d/99-tailscale.conf
sudo sysctl -p /etc/sysctl.d/99-tailscale.conf

# ------------------------------------------------------------------ 3
echo
echo ' [3] Enabling and starting tailscaled as system service -------'
echo;

sleep 1

service tailscale start
rc-update add tailscale

# ------------------------------------------------------------------ 4
echo
echo ' [4] Resetting alpine-interfaces ------------------------------'
echo;

sleep 1

setup-interfaces;

# ------------------------------------------------------------------ 5
echo
echo ' [5] Connecting as client (ssh and exit-node) -----------------'

tailscale up --ssh --advertise-exit-node --auth-key tskey-auth-kT6X4C4CNTRL-3N48qNbyKw1EnrHj6FhC12ktDdX2dpHtT && echo;

# ------------------------------------------------------------------ 0
echo ' ✓ Success ----------------------------------------------------'
echo
echo ' ⌛ Rebooting withing 6 seconds... '
echo;

sleep 6

reboot;
