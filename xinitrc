/usr/bin/syndaemon -K -i 1 &
/usr/bin/xscreensaver -no-splash &
xss-lock -- xscreensaver-command -lock &
exec dbus-launch i3
