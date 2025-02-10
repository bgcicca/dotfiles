case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/cicca/.oh-my-bash'
export DISABLE_OMF_STATS=true

eval "$(starship init bash)"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  bashmarks
  brew
)

aliases=(
  general
)

source "$OSH"/oh-my-bash.sh

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
 fi

export NVM_DIR="$HOME/.nvm"
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"  
  [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"  

alias bashconfig="mate ~/.bashrc"
alias ohmybash="mate ~/.oh-my-bash"
alias gitc="git commit -m $1"
alias gc="git commit -m $1"
alias gita="git add"
alias ga="git add"
alias gits="git status"
alias gs="git status"
alias gitch="git checkout"
alias gitchb="git checkout -b"

export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
