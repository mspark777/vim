# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, nvim
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim, make all
1. if pyc error: pip install pynvim
1. ( KERL_CONFIGURE_OPTIONS="--without-wx --without-javac" asdf install erlang {version} )

### Ubuntu
1. asdf, nvim(https://github.com/neovim/neovim/releases)
1. apt install xclip
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim, make all (MEM + SWAP >= 64G)
1. if pyc error: pip install pynvim

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

## Languages
```sh
nodejs 16.16.0
elixir 1.13.4-otp-22
erlang 22.3.4.26
golang 1.17.6
python 3.10.0
```
