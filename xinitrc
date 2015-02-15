/usr/bin/xscreensaver -no-splash &
xrdb -load ~/.Xdefaults
xmodmap ~/.Xmodmap
exec dbus-launch i3
