# vim

My nvim configure.

## Install

### macOS

1. stats
1. brew git fzf ripgrep jq tidy-html5 fd bat ack wget tmux zstd nerdfonts tree-sitter lazygit neovim awscli wezterm bash
1. asdf, tmux plugins
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check
1. on-my-zsh, powerlevel10k. plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search ohmyzsh-full-autoupdate)

### Ubuntu or WSL

1. apt install build-essential vim-gtk3 flatpak
1. apt purge tmux
1. flatpak wezterm gnome-extenstion-manager
1. gnome-extenstion-manager tophat
1. make hack
1. make tpm
1. brew
1. brew install git make xclip ack fzf ripgrep jq tidy-html5 fd bat zstd tree-sitter lazygit neovim awscli tmux
1. asdf
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check

### Manually Version Control

1. [telecope.nvim](https://github.com/nvim-telescope/telescope.nvim)

### Need to change a file name

```
sshconfig -> ${HOME}/.ssh/config
.tool-versions -> ${HOME}/.tool-versions
old.vimrc -> ${HOME}/.vimrc
tmux.conf -> ${HOME}/.tmux.conf
wezterm.lua -> ${HOME}/.wezterm.lua (It need to be at host OS home directory)
```

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
git config --global diff.tool nvimdiff
git config --global init.defaultBranch main
```

## Update

1. sudo apt update & upgrade
2. sudo flatpak update
3. brew update & upgrade
4. asdf update & plugin update --all
5. omz update
6. make hack
7. tmux prefix + U
8. make cleanall & nvim
