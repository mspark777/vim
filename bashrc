function lvim {
  local LOCAL_FILE="$(pwd)/.vimrc"
  if [ -f "${LOCAL_FILE}" ]
  then
    vim -u "${LOCAL_FILE}"
  else
    vim
  fi
}
