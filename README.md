# zh-vmc-alpine-patch

## Once on shell, first patch:

  apk add git && git clone https://github.com/ropsnap/zh-vmc-alpine-patch && bash zh-vmc-alpine-patch/setup-alpine-01.sh;

## After reboot, second patch:

  apk add git && git clone https://github.com/ropsnap/zh-vmc-alpine-patch && bash zh-vmc-alpine-patch/setup-alpine-02.sh;

## Optionally, after reboot, setup tailscale client:

  bash zh-vmc-alpine-patch/setup-tailscale-03.sh;

## Optionally, after reboot, setup CashFactory project:

  bash zh-vmc-alpine-patch/install-cash-factory;
