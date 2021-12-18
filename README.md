# vim

My vim8 configure.

## Install

### macOS
1. XCode, command-line-tools
2. brew
3. wget, tmux, asdf
5. Docker, K8S
6. node.js
7. git clone git@github.com:mspark777/vim.git .vim
8. cd .vim, make all

### Ubuntu
1. apt update && apt upgrade -y
2. apt install build-essential git wget curl tmux make
3. VBoxGuestAdditions (VirtualBox)
4. asdf
5. node.js
6. Docker, kubectl (or k8s)
7. git clone git@github.com:mspark777/vim.git .vim
8. cd .vim, make all

### Gitconfig
```sh
git config --global user.name 'minsoo.park'
git config --global user.email 'topangel777@gmail.com'
git config --global core.editor vim
git config --global push.default simple
```

### Remote copy
1. brew install clipper
2. ssh -R 8377:localhost:8377 ...
3. $remote: nc -q 0 localhost 8377
