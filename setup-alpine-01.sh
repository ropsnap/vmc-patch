#!/bin/bash

echo;
echo;
echo '	--------------------- Step [1] ------------------------------'
echo '	→ CashFactory env patch over vmConsole Alpine'
echo '	→ File path → '$(pwd)'/first.sh'
echo '	-------------------------------------------------------------'
echo;

sleep 1

echo '	[1] Setting persistent volume -------------------------------'
echo;

export ROOT_SIZE=4096 && setup-disk -m sys -s 0 /dev/sda && touch pertest;

sleep 1

echo '	✓ Success! --------------------------------------------------'
echo;

echo '	--------------------- Attention -----------------------------'
echo '	🟡 After reboot, run "ls", checkout pertest file is there.'
echo '	🟢 Then, run the [2] patch script: $(pwd)/second.sh'
echo '	-------------------------------------------------------------'
echo;
echo '	⌛ Rebooting withing 6 seconds... ---------------------------'
echo;

delay 6

reboot;
