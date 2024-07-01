help:
	@cat Makefile

theme:
	cd ~/.config/alacritty/themes && git pull

clean:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

cleanall: clean
	rm lazy-lock.json
