
install: clean
	mkdir -p start
	git clone https://github.com/preservim/nerdtree.git start/nerdtree       
	git clone https://github.com/Xuyuanp/nerdtree-git-plugin.git start/nerdtree-git-plugin
	git clone https://github.com/morhetz/gruvbox.git start/gruvbox           
	git clone https://github.com/shime/vim-livedown.git start/vim-livedown
	git clone https://github.com/pangloss/vim-javascript.git start/vim-javascript
	git clone https://github.com/leafgarland/typescript-vim.git start/typescript-vim
	git clone https://github.com/MaxMEllon/vim-jsx-pretty.git start/vim-jsx-pretty
	git clone https://github.com/fatih/vim-go.git start/vim-go               
	git clone https://github.com/vim-python/python-syntax.git start/python-syntax
	git clone https://github.com/evanleck/vim-svelte.git start/vim-svelte
	# It must be installed at last.                                                   
	curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
	mv coc.nvim-release start/                                               
	#vim -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-tsserver coc-yaml coc-eslint coc-go coc-docker coc-pyright|qa!'

clean:
	rm -rf start
