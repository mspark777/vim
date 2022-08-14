# vim

My nvim configure.

## Install

### macOS
1. brew, asdf, nvim
2. node.js, rust, erlang, elixir, python ( KERL_CONFIGURE_OPTIONS="--without-wx --without-javac" asdf install erlang {version} )
3. git clone git@github.com:mspark777/vim.git ~/.config/nvim
4. cd ~/.config/nvim, make all
5. if pyc error: pip install pynvim

### Ubuntu
1. asdf, nvim(https://github.com/neovim/neovim/releases)
2. apt install xclip
3. node.js, erlang, elixir, rust, python
3. git clone git@github.com:mspark777/vim.git ~/.config/nvim
4. cd ~/.config/nvim, make all (MEM + SWAP >= 64G)
5. if pyc error: pip install pynvim

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