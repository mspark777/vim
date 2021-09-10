function lvim {
  if [ -f '.vimrc' ]
  then
    vim -c 'source .vimrc'
  else
    vim
  fi
}
