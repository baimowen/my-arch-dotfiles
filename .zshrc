case $- in  # check shell options
    *i*) ;;  # interactive shell
      *) return;;  # don't do anything
esac

[ -f ~/.config/shell/colors.sh ] && source ~/.config/shell/colors.sh
[ -f ~/.config/shell/aliases.sh ] && source ~/.config/shell/aliases.sh
[ -f ~/.config/shell/bindkeys.sh ] && source ~/.config/shell/bindkeys.sh
[ -f ~/.config/shell/functions.sh ] && source ~/.config/shell/functions.sh
[ -f ~/.config/shell/history_settings.sh ] && source ~/.config/shell/history_settings.sh

# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# [ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && source $_ || :
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# git clone https://github.com/zap-zsh/sudo.git ~/.zsh/zsh-sudo
# [ -f ~/.zsh/zsh-sudo/sudo.plugin.zsh ] && source $_ || :
source ~/.zsh/zsh-sudo/sudo.plugin.zsh
# git clone https://github.com/catppuccin/zsh-syntax-highlighting.git ~/.zsh/zsh-catppuccin
# [ -f ~/.zsh/zsh-catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh ] && source $_ || :
source ~/.zsh/zsh-catppuccin/themes/catppuccin_mocha-zsh-syntax-highlighting.zsh
# git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship
eval "$(starship init zsh)"

# fzf
[ -f ~/.config/shell/fzf.sh ] && source ~/.config/shell/fzf.sh
# source <(/usr/bin/fzf --zsh)
