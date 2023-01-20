# zh-vmc-alpine-patch

## Once on shell, disk patch:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/disk.sh && bash disk.sh && rm disk.sh
  
  ![](https://github.com/ropsnap/vmc-patch/blob/main/disk.png width=150x150)
  
## After reboot, main patch:
  
  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/main.sh && bash main.sh && rm main.sh

  ![]([http://url/to/img.png](https://github.com/ropsnap/vmc-patch/blob/main/disk.png?raw=true)

## Optionally, after reboot, setup tailscale client:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/tailscale.sh && bash tailscale.sh && rm tailscale.sh
  
  ![](http://url/to/img.png)

## Optionally, after reboot, setup CashFactory project:

  wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/cash-factory.sh && bash cash-factory.sh && rm $HOME/cash-factory.sh

  ![](http://url/to/img.png)
