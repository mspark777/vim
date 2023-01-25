help:
	@cat Makefile

fonts:
	-[ ! -d "nerd-fonts" ] && git clone https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts && git pull && ./install.sh

fzfgit:
	-[ ! -d "fzf-git.sh" ] && git clone https://github.com/junegunn/fzf-git.sh.git
	cd fzf-git.sh && git pull

exls:
	rm -rf elixir-ls
	wget https://github.com/elixir-lsp/elixir-ls/releases/download/v0.13.0/elixir-ls.zip
	unzip elixir-ls.zip -d elixir-ls
	rm elixir-ls.zip

nvim:
	wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
	sudo apt update
	sudo apt install ./nvim-linux64.deb
	rm ./nvim-linux64.deb

nodedebug2:
	-[ ! -d "vscode-node-debug2" ] && git clone https://github.com/microsoft/vscode-node-debug2.git
	cd vscode-node-debug2 && git pull && npm ci && NODE_OPTIONS=--no-experimental-fetch npm run build
