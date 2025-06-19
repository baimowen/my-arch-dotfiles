[ -f ~/.zshrc ] && source ~/.zshrc
if [ -z "${WAYLAND_DISPLAY}" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec Hyprland
fi