# vim

My vim8 configure. (macOS (Catalina 10.15.7 +, Big Sur), Ubuntu 20.04 +)

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
git config --glboal push.default simple
```
