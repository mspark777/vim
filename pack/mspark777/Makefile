
install: clean
	mkdir -p start
	git clone https://github.com/preservim/nerdtree start/nerdtree       
	git clone https://github.com/Xuyuanp/nerdtree-git-plugin start/nerdtree-git-plugin
	git clone https://github.com/morhetz/gruvbox start/gruvbox           
	git clone https://github.com/pangloss/vim-javascript start/vim-javascript
	git clone https://github.com/leafgarland/typescript-vim start/typescript-vim
	git clone https://github.com/MaxMEllon/vim-jsx-pretty start/vim-jsx-pretty
	git clone https://github.com/vim-python/python-syntax start/python-syntax
	git clone https://github.com/rust-lang/rust.vim start/rust.vim
	# It must be installed at last.                                                   
	curl --fail -L https://github.com/neoclide/coc.nvim/archive/release.tar.gz|tar xzfv -
	mv coc.nvim-release start/                                               
	vim -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-tsserver coc-yaml coc-eslint coc-docker coc-pyright coc-rls|qa!'

clean:
	rm -rf start
