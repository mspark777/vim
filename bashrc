# Enable the subsequent settings only in interactive sessions
[[ $- != *i* ]] && return

if [[ -f "/proc/sys/fs/binfmt_misc/WSLInterop" ]]
then
  if [[ ! -v THIS_IS_FIRST_TIME ]]
  then
    if [[ ! -v TMUX ]]
    then
      THIS_IS_FIRST_TIME='true'
      cd ${HOME}
    fi
  fi
fi

#rm -rf .git
#git init
#git remote add origin [your-remote-url]
#git fetch
#git reset --mixed origin/main

export OSH='/home/mspark777/.oh-my-bash'

OSH_THEME="powerbash10k"
OMB_USE_SUDO=true
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


alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
. <(asdf completion bash)
. "$HOME/.cargo/env"
