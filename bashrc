function lvim {
  if [ -f '.vimrc' ]
  then
    vim -c 'source .vimrc'
  elif [ -f '.vim/vimrc' ]
  then
    vim -c 'source .vim/vimrc'
  else
    vim
  fi
}

alias vimdiff='nvim -d'
alias pbcopy='xclip -sel clip'
source ~/.config/nvim/fzf-git.sh/fzf-git.sh
export PATH="${PATH}:${HOME}/.config/nvim/bin"
