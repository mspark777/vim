# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, nvim, iterm2, fzf, ripgrep, jq, tidy, fd
1. brew install ack
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. make fzfgit
1. nvim
1. nvim :check


### Ubuntu
1. asdf, nvim
1. apt install xclip, ack, fzf, ripgrep, jq, tidy, fd-find
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. make fzfgit
1. nvim
1. nvim :check


### WSL
1. Ubuntu
1. apt purge tmux && apt install tmux

### Gitconfig
```sh
git config user.name 'mspark777'
git config user.email 'topangel777@gmail.com'
git config --global core.editor nvim
git config --global push.default simple
git config --global pull.rebase false
git config --global pager.branch false
git config --global pager.config false
git config --global pager.diff false
git config --global diff.tool vimdiff
git config --global init.defaultBranch main
```
