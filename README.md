# vim

My vim9 configure.

## Install

### macOS
1. XCode, command-line-tools
2. brew
3. vim, wget, tmux, asdf
4. Docker, K8S
5. node.js, rust, erlang, elixir ( KERL_CONFIGURE_OPTIONS="--without-wx --without-javac" asdf install erlang {version} )
6. git clone git@github.com:mspark777/vim.git .vim
7. cd .vim, make all

### Ubuntu
1. Build vim
2. asdf
3. node.js, erlang, elixir, rust
4. Docker, kubectl (or k8s)
5. git clone git@github.com:mspark777/vim.git .vim
6. cd .vim, make all (MEM + SWAP >= 64G)

### Build vim
```sh
apt update && apt upgrade -y
apt install build-essential git wget curl tmux make libncurses-dev python3-dev python3-pip libperl-dev ruby-dev liblua5.3-dev liblua5.3-dev lua5.3 gettext
pip install -U pip
git clone --depth=1 https://github.com/vim/vim.git
cd vim/src
./configure --with-features=huge --with-tlib=ncurses --enable-luainterp=yes --enable-rubyinterp=yes --enable-terminal --enable-perlinterp=yes --enable-python3interp=yes --with-python3-command=/usr/bin/python3 --enable-multibyte --enable-cscope  --enable-fail-if-missing  --prefix="${HOME}/Bins/vim"
make
make install
```

###nvim
```sh
# https://github.com/neovim/neovim/releases
# ubuntu apt install xclip
mkdir ~/.config/nvim
touch ~/.config/nvim/init.vim
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vim/vimrc
# pip install pynvim
```

### Gitconfig
```sh
git config user.name 'minsoo.park'
git config user.email 'topangel777@gmail.com'
git config --global core.editor vim
git config --global push.default simple
git config --global pull.rebase false
git config --global pager.branch false
git config --global pager.config false
git config --global pager.diff false
```

### Remote copy
1. brew install clipper
2. ssh -R 8377:localhost:8377 ...
3. $remote: nc -q 0 localhost 8377
