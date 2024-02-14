# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, iterm2, fzf, ripgrep, jq, tidy, fd, bat, stats
1. brew install ack
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. nvim
1. nvim :check


### Ubuntu
1. apt install build-essential, git, make, vim, vim-gtk3, xclip, ack, fzf, ripgrep, jq, tidy, fd-find, libfuse2, bat
1. asdf
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. nvim
1. nvim :check


### WSL
1. Windows terminal
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
