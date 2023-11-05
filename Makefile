.PHONY: bin

help:
	@cat Makefile

fonts:
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
	unzip Hack.zip -d hack
	mkdir -p ~/.local/share/fonts/nerdfonts
	rm -rf ~/.local/share/fonts/nerdfonts/hack
	mv hack ~/.local/share/fonts/nerdfonts/
	rm Hack.zip

nvim: bin
	wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
	rm -f bin/nvim
	mv nvim.appimage bin/nvim
	chmod +x bin/nvim

treesitter: bin
	rm -f bin/tree-sitter
	wget https://github.com/tree-sitter/tree-sitter/releases/download/v0.20.8/tree-sitter-linux-x64.gz
	gzip -d tree-sitter-linux-x64.gz
	mv tree-sitter-linux-x64 bin/tree-sitter
	chmod +x bin/tree-sitter

clean:
	rm -rf ~/.local/share/nvim/lazy
	rm -rf ~/.local/state/nvim/lazy
	sudo rm -rf ~/.config/coc

bin:
	mkdir -p bin
