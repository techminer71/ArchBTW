export ZSH="/usr/share/oh-my-zsh"

# Set name of the theme to load — keeping p10k here
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

alias calfstart="./scripts/calfstart.sh"
alias launch-waybar="./scripts/launch-waybar.sh"
alias freecad="QT_QPA_PLATFORM=xcb freecad"
alias gparted="sudo -E gparted"

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

# Powerlevel10k instant prompt — this speeds up shell startup
# You can comment this if you encounter issues
if [[ -r "${ZDOTDIR:-$HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.cache/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` and it’ll generate this file:
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
