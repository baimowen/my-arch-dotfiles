[ -f ~/.zshrc ] && source ~/.zshrc
if [ -z "${WAYLAND_DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi
if ! pgrep -u $USER pulseaudio > /dev/null; then
    pulseaudio --start
fi
# [[ ! -p /tmp/mpd.fifo ]] && (rm -f /tmp/mpd.fifo && mkfifo /tmp/mpd.fifo && chmod 666 /tmp/mpd.fifo)