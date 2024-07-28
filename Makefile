help:
	@cat Makefile

tpm:
	mkdir -p ~/.tmux/plugins
	rm -rf ~/.tmux/plugins/*
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

hack:
	mkdir -p ~/.local/share/fonts
	rm -rf HackNerdFont
	mkdir HackNerdFont
	cd HackNerdFont && curl -OL https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Hack.tar.xz && tar -xvf Hack.tar.xz && mv *.ttf ~/.local/share/fonts/
	rm -rf HackNerdFont

clean:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

cleanall: clean
	rm -f lazy-lock.json
