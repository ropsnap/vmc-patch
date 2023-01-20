#!/bin/bash

echo;
echo ' --------------------- Step [1] ------------------------------'
echo ' → File path → '$(pwd)'/setup-alpine-01.sh'
echo ' -------------------------------------------------------------'
echo;

sleep 1

echo ' [1] Setting persistent volume -------------------------------'
echo;

export ROOT_SIZE=4096 && setup-disk -m sys -s 0 /dev/sda && touch pertest;

sleep 1

echo ' ✓ Success! --------------------------------------------------'
echo;

echo ' --------------------- Attention -----------------------------'
echo ' 🟡 After reboot, run the next patch → main.sh
echo ' -------------------------------------------------------------'
echo;
echo ' ⌛ Rebooting withing 9 seconds... '
echo;

sleep 9

reboot;
