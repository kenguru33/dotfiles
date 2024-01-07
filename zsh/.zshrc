# if [ -z "$TMUX" ]
# then
#   tmux attach -t TMUX || tmux new -s TMUX
# fi

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"

# Load and initialise completion system
autoload -Uz compinit
compinit

# Starship Prompt
eval "$(starship init zsh)"

# Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"


# Load Angular CLI autocompletion.
source <(ng completion script)

# Add local bin directory to path
export PATH="$HOME/bin:$PATH"

# pfetch with kitties
PF_INFO="ascii os kernel memory uptime" PF_ASCII="Catppuccin" pfetch
