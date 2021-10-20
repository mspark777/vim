
install: clean
	mkdir -p start
	git clone --depth=1 https://github.com/preservim/nerdtree.git start/nerdtree
	git clone --depth=1 https://github.com/Xuyuanp/nerdtree-git-plugin.git start/nerdtree-git-plugin
	git clone --depth=1 https://github.com/tomasiser/vim-code-dark.git start/vim-code-dark
	git clone --depth=1 https://github.com/vim-airline/vim-airline.git start/vim-airline
	git clone --depth=1 https://github.com/vim-airline/vim-airline-themes.git start/vim-airline-themes
	git clone --depth=1 https://github.com/tpope/vim-fugitive.git start/vim-fugitive
	git clone --depth=1 https://github.com/pangloss/vim-javascript.git start/vim-javascript
	git clone --depth=1 https://github.com/leafgarland/typescript-vim.git start/typescript-vim
	git clone --depth=1 https://github.com/MaxMEllon/vim-jsx-pretty.git start/vim-jsx-pretty
	git clone --depth=1 https://github.com/vim-python/python-syntax.git start/python-syntax
	git clone --depth=1 git@github.com:zivyangll/git-blame.vim.git start/git-blame.vim
	git clone --depth=1 https://github.com/rust-lang/rust.vim.git start/rust.vim
	git clone --depth=1 git://github.com/shime/vim-livedown.git start/vim-livedown

	# It must be installed at last.
	git clone --branch release --depth=1 https://github.com/neoclide/coc.nvim.git start/coc.nvim
	vim -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-tsserver coc-yaml coc-eslint coc-docker coc-pyright coc-clangd coc-swagger coc-svg coc-rust-analyzer coc-deno coc-phpls|qa!'

clean:
	rm -rf start
