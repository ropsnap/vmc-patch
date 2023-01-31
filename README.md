zh-vmc-alpine-patch

Once on shell, disk patch:

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/disk.sh && bash disk.sh && rm disk.sh

After reboot, main patch:

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/main.sh && bash main.sh && rm main.sh

After reboot, setup Tailscale client:

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/tailscale.sh && bash tailscale.sh && rm tailscale.sh

After reboot, setup CashFactory patch:

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/cash-factory.sh && bash cash-factory.sh && rm $HOME/cash-factory.sh

After reboot, setup ProxyServer patch:

wget https://raw.githubusercontent.com/ropsnap/vmc-patch/main/proxy-server.sh && bash proxy-server.sh && rm $HOME/proxy-server.sh