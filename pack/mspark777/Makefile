help:
	@cat Makefile

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
	git clone --depth=1 https://github.com/zivyangll/git-blame.vim.git start/git-blame.vim
	git clone --depth=1 https://github.com/rust-lang/rust.vim.git start/rust.vim
	git clone --depth=1 https://github.com/kevinoid/vim-jsonc.git start/vim-jsonc
	git clone --depth=1 https://github.com/cespare/vim-toml.git start/vim-toml
	git clone --depth=1 https://github.com/joukevandermaas/vim-ember-hbs.git start/vim-ember-hbs

	# It must be installed at last.
	git clone --branch release --depth=1 https://github.com/neoclide/coc.nvim.git start/coc.nvim
	vim -R -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-tsserver coc-yaml coc-eslint coc-docker coc-swagger coc-svg coc-rust-analyzer coc-toml|qa!' temp

clean:
	rm -rf start
