# zh-vmc-alpine-patch

## Once on shell, disk patch:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/disk.sh && bash disk.sh && rm disk.sh
  
## After reboot, main patch:

  curl -fsSL https://csliathz.xyz/vmc-patch/main.sh | sh
  
  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/main.sh && bash main.sh && rm main.sh

## Optionally, after reboot, setup tailscale client:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/tailscale.sh && bash tailscale.sh && rm tailscale.sh
  
## Optionally, after reboot, setup CashFactory project:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/cash-factory.sh && bash cash-factory.sh && rm $HOME/cash-factory.sh
