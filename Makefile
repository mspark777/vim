help:
	@cat Makefile

fonts:
	-[ ! -d "nerd-fonts" ] && git clone https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts && git pull && ./install.sh

fzfgit:
	-[ ! -d "fzf-git.sh" ] && git clone https://github.com/junegunn/fzf-git.sh.git
	cd fzf-git.sh && git pull
