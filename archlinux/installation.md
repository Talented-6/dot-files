get the iso file
> mirrors.ustc.edu.cn

connect the internet
```
# change the fonts
setfont ter-u24b

sudo pacman -Sy terminus-font
setfont ter-v32n

# connect the internet
iwctl
device list
station wlan0 scan
station wlan0 get-networks
station wlan0 connect
quit
# test
ping -c5 www.baidu.com
# install, but it has a bug while mannually setting up the disk layout
# archinstall
```

```
# confirm the system time
timedatectl status
timedatectl set-ntp true  # enable the ntp service
```
```
# pacman.conf
[archlinuxcn]
Color
Server = https://tuna.tsinghua.edu.cn/archlinuxcn/$arch

sudo pacman -S archlinuxcn-keyring
```

```
# about the wayfire settings

loginctl terminate-user $USER

yay nerd-fonts-incon # 3

systemctl enable seatd
systemctl start seatd

git clone https://gitee.com/mirrors/wayfire.git

yay wallpaper

# Chinese fonts
noto-fonts-sc(aur)
adobe-source-han-sans-cn-fonts
# etc/locale.conf
zh_CN.UTF-8

# neovim +clipboard
xclip or xsel
```

```
# wayfire.ini
autostart_wf_shell=false
```