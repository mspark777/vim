.PHONY: bin

help:
	@cat Makefile

fonts:
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip
	unzip Hack.zip -d hack
	mkdir -p ~/.local/share/fonts/nerdfonts
	rm -rf ~/.local/share/fonts/nerdfonts/hack
	mv hack ~/.local/share/fonts/nerdfonts/
	rm Hack.zip

clean:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

bin:
	mkdir -p bin
