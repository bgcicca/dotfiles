export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=nekonight
DISABLE_LS_COLORS="true"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  command-not-found
)

source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
fi

export PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"

eval $(thefuck --alias)

export PATH="$PATH:~/scripts"

alias -s git="git clone"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

