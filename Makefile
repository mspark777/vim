PACKDIR=${HOME}/.local/share/nvim/site/pack
STARTDIR=$(PACKDIR)/packer/start
COCDIR=${HOME}/.config/coc
COCEXTDIR=$(COCDIR)/extensions

help:
	@cat Makefile

fonts:
	-[ ! -d "nerd-fonts" ] && git clone https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts && git pull && ./install.sh

packages: clean_packages
	mkdir -p $(STARTDIR)

fzfgit:
	-[ ! -d "fzf-git.sh" ] && git clone https://github.com/junegunn/fzf-git.sh.git
	cd fzf-git.sh && git pull


clean_packages:
	rm -rf $(PACKDIR)

clean_coc:
	-chmod -R u+w $(COCEXTDIR)/coc-go-data
	rm -rf $(COCDIR)

clean_fonts:
	rm -rf nerd-fonts

clean_fzfgit:
	rm -rf fzf-git
