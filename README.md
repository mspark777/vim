# vim

My nvim configure.

## Install

### macOS

1. stats
1. brew git fzf ripgrep jq tidy-html5 fd bat ack wget tmux zstd nerdfonts tree-sitter lazygit neovim awscli alacritty bash
1. asdf, tmux plugins
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check
1. on-my-zsh, powerlevel10k. plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search ohmyzsh-full-autoupdate)

### Ubuntu

1. apt install build-essential vim-gtk3
1. brew git make xclip ack fzf ripgrep jq tidy-html5 fd bat zstd nerdfonts zsh tree-sitter lazygit neovim awscli llvm alaccritty
1. asdf, tmux plugins
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check

### WSL

1. Windows terminal
1. Ubuntu
1. apt purge tmux && apt install tmux
1. Windows terminal color tokyonight-night

### Manually Version Control

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

## Update

1. apt update & upgrade
1. brew update & upgrade
1. asdf update & plugin update --all
1. make theme
1. tmux prefix + U
1. make cleanall & nvim
