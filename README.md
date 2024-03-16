# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, iterm2, fzf, ripgrep, jq, tidy-html5, fd, bat, stats, ack, wget, tmux, zstd
1. pip install pylint cpplint black
1. nerdfonts, clang-format - with brew
2. asdf
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check
1. on-my-zsh, powerlevel10k. plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search ohmyzsh-full-autoupdate)
1. iterm2 color-scheme tokyonight-storm


### Ubuntu
1. apt install build-essential git make vim-gtk3 xclip ack fzf ripgrep jq tidy fd-find libfuse2 bat zsh zstd clang-format
1. chsh -s $(which zsh)
1. asdf
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. make fonts
1. nvim
1. nvim :check
1. on-my-zsh, powerlevel10k. plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search ohmyzsh-full-autoupdate)


### WSL
1. Windows terminal
1. Ubuntu
1. apt purge tmux && apt install tmux
1. Windows terminal color tokyonight-storm

### Manually Version
1. telecope.nvim

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
