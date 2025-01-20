case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/brunociccarino/.oh-my-bash'

OSH_THEME="nekonight"
DISABLE_AUTO_UPDATE="true"
COMPLETION_WAITING_DOTS="true"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)

plugins=(
  git
  bashmarks
)

source "$OSH"/oh-my-bash.sh


export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
 fi


alias bashconfig="mate ~/.bashrc"
alias ohmybash="mate ~/.oh-my-bash"
