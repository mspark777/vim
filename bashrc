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
source ~/.config/nvim/fzf-git.sh/fzf-git.sh
