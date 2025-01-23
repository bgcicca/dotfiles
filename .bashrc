case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/brunociccarino/.oh-my-bash'


OSH_THEME="nekonight_moon"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  bashmarks
  brew
)

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

source "$OSH"/oh-my-bash.sh


export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='nvim'
 fi


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

