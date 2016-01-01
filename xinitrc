#/usr/bin/xscreensaver -no-splash &
xrdb -load ~/.Xdefaults
#xmodmap ~/.Xmodmap
#exec dbus-launch i3
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
exec startxfce4
