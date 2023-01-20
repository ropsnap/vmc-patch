# zh-vmc-alpine-patch

## Once on shell, disk patch:

  curl -fsSL https://csliathz.xyz/vmc-patch/disk.sh | sh
  
## After reboot, main patch:

  curl -fsSL https://csliathz.xyz/vmc-patch/main.sh | sh

## Optionally, after reboot, setup tailscale client:

  curl -fsSL https://csliathz.xyz/vmc-patch/tailscale.sh | sh

## Optionally, after reboot, setup CashFactory project:

  curl -fsSL https://csliathz.xyz/vmc-patch/cash-factory.sh | sh
