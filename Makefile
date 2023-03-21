help:
	@cat Makefile

fonts:
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/Hack.zip
	unzip Hack.zip -d hack
	mkdir -p ~/.local/share/fonts/nerdfonts
	rm -rf ~/.local/share/fonts/nerdfonts/hack
	mv hack ~/.local/share/fonts/nerdfonts/
	rm Hack.zip

fzfgit:
	-[ ! -d "fzf-git.sh" ] && git clone https://github.com/junegunn/fzf-git.sh.git
	cd fzf-git.sh && git pull

nvim:
	wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
	sudo apt update
	sudo apt install ./nvim-linux64.deb
	rm ./nvim-linux64.deb

treesitter:
	wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.7/tree-sitter-linux-x64.gz
	gzip -d tree-sitter-linux-x64.gz
	mkdir -p bin
	mv tree-sitter-linux-x64 bin/tree-sitter
	chmod +x bin/tree-sitter

clean:
	rm -rf ~/.local/share/nvim/site/pack/packer
	sudo rm -rf ~/.config/coc
	rm -f plugin/packer_compiled.lua
