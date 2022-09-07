# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, nvim
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim, make all
1. ( KERL_CONFIGURE_OPTIONS="--without-wx --without-javac" asdf install erlang {version} )

### Ubuntu
1. asdf, nvim(https://github.com/neovim/neovim/releases)
1. apt install xclip
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim, make all (MEM + SWAP >= 64G)

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
git config --global diff.tool vimdiff
git config --global init.defaultBranch master
```
