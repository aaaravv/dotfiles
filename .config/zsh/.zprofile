### Profiles ###
#!/bin/sh
# profile - runs on login
#           read by login shell
#           set environment variables here

# Exec Sway
if [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi

# Display Manager 
XDG_SESSION_TYPE=wayland
XDG_CURRENT_DESKTOP=sway
QT_QPA_PLATFORM=wayland
QT_QPA_PLATFORM=wayland-egl
