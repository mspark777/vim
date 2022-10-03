# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, nvim
1. brew install ack
1. https://github.com/ryanoasis/nerd-fonts
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. nvim
1. make coc

### Ubuntu
1. asdf, nvim(https://github.com/neovim/neovim/releases)
1. apt install xclip ack
1. https://github.com/ryanoasis/nerd-fonts
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. nvim
1. make coc

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
