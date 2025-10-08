# vim

My nvim configure.

## Install

### macOS

1. stats
1. brew git fzf ripgrep jq tidy-html5 fd bat ack wget tmux zstd nerdfonts tree-sitter lazygit neovim awscli wezterm bash cargo-binstall asdf llvm lazydocker lld
1. asdf, tmux plugins
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. cd ~/.config/nvim
1. nvim
1. nvim :check

### Ubuntu or WSL

1. visudo ALL=(ALL:ALL) NOPASSWDL:ALL
1. sudo apt update && upgrade
1. sudo apt install vim-gtk3
1. brew
1. brew install make xclip ack fzf ripgrep jq tidy-html5 fd bat zstd tree-sitter lazygit neovim awscli tmux cargo-binstall asdf llvm lazydocker lld openssh less net-tools wget
1. oh-my-bash
1. asdf
1. git clone git@github.com:mspark777/vim.git ~/.config/nvim
1. make tpm
1. nvim
1. nvim :check

### Manually Version Control

1. [WezTerm](https://github.com/wez/wezterm)
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
