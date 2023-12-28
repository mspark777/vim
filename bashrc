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

alias pbcopy='xclip -sel clip'
export PATH="${PATH}:${HOME}/.config/nvim/bin"
