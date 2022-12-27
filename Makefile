help:
	@cat Makefile

fonts:
	-[ ! -d "nerd-fonts" ] && git clone https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts && git pull && ./install.sh

fzfgit:
	-[ ! -d "fzf-git.sh" ] && git clone https://github.com/junegunn/fzf-git.sh.git
	cd fzf-git.sh && git pull

exls:
	wget https://github.com/elixir-lsp/elixir-ls/releases/download/v0.12.0/elixir-ls.zip
	unzip elixir-ls.zip -d elixir-ls
	rm elixir-ls.zip
