# vim

My nvim configure.

## Install

### macOS

1. stats
2. brew git fzf ripgrep jq tidy-html5 fd bat ack wget tmux zstd nerdfonts tree-sitter lazygit neovim awscli wezterm bash cargo-binstall asdf llvm lazydocker lld
3. asdf, tmux plugins
4. git clone git@github.com:mspark777/vim.git ~/.config/nvim
5. cd ~/.config/nvim
6. nvim
7. nvim :check

### Ubuntu - WSL

1. visudo ALL=(ALL:ALL) NOPASSWDL:ALL
2. sudo apt update && upgrade
3. sudo apt install vim-gtk3
4. brew
5. brew install make xclip ack fzf ripgrep jq tidy-html5 fd bat zstd tree-sitter lazygit neovim awscli tmux cargo-binstall asdf llvm lazydocker lld openssh less net-tools wget
6. oh-my-bash
8. git clone git@github.com:mspark777/vim.git ~/.config/nvim
9. asdf
10. make tpm
11. nvim
12. nvim :check

### Ubuntu
1. visudo ALL=(ALL:ALL) NOPASSWDL:ALL
2. sudo apt install vim-gtk3
3. brew
5. brew install make xclip ack fzf ripgrep jq tidy-html5 fd bat zstd tree-sitter lazygit neovim awscli tmux cargo-binstall asdf llvm lazydocker lld openssh less net-tools wget
6. oh-my-bash
7. git clone git@github.com:mspark777/vim.git ~/.config/nvim
8. asdf
9. make tpm hack
11. nvim
12. nvim :check
13. apt wezterm
14. flathub tophat

### Manually Version Control

1. [telecope.nvim](https://github.com/nvim-telescope/telescope.nvim)
1. [nvim-surround](https://github.com/kylechui/nvim-surround)
1. [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
1. [NerdFonts](https://github.com/ryanoasis/nerd-fonts)

### Need to change a file name

```
sshconfig -> ${HOME}/.ssh/config
.tool-versions -> ${HOME}/.tool-versions
old.vimrc -> ${HOME}/.vimrc
tmux.conf -> ${HOME}/.tmux.conf
wezterm.lua -> ${HOME}/.wezterm.lua (It need to be at host OS home directory)
bashrc -> ${HOME}/.bashrc
```

### Gitconfig

```sh
git config user.name 'mspark777'
git config user.email 'topangel777@gmail.com'
git config --global core.editor nvim
git config --global diff.tool nvimdiff
git config --global push.default simple
git config --global pull.rebase false
git config --global pager.branch false
git config --global pager.config false
git config --global pager.diff false
git config --global init.defaultBranch main
git config --global core.autocrlf false
```

## Update

1. sudo apt update && upgrade
1. brew update & upgrade
1. upgrade_oh_my_bash
1. asdf plugin update --all
1. make hack
1. tmux prefix + U
1. rustup update
1. make cleanall & nvim
