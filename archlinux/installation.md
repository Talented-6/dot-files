get the iso file
> mirrors.ustc.edu.cn
connect the internet
```
# change the fonts
setfont ter-u24b
# connect the internet
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect
quit
# test
ping -c5 www.baidu.com
# install, but it has a bug while mannually set the disk layout
# archinstall
```

```
# confirm the system time
timedatectl status
timedatectl set-ntp true  # enable the ntp service
```