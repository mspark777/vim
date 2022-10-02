PACKDIR=${HOME}/.local/share/nvim/site/pack
STARTDIR=$(PACKDIR)/packer/start
COCDIR=${HOME}/.config/coc
COCEXTDIR=$(COCDIR)/extensions

help:
	@cat Makefile

fonts:
	git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
	cd nerd-fonts && ./install.sh
	rm -rf nerd-fonts

packages: clean_packages
	mkdir -p $(STARTDIR)
	git clone --depth 1 https://github.com/wbthomason/packer.nvim $(STARTDIR)/

coc: clean_coc
	nvim -R -c 'CocInstall -sync coc-tsserver coc-rust-analyzer coc-go coc-pyright coc-lua coc-sh|qa!'
	nvim -R -c 'CocInstall -sync @yaegassy/coc-tailwindcss3 coc-css coc-git coc-html coc-json coc-yaml coc-eslint coc-docker coc-swagger coc-svg coc-toml|qa!'

all: packages coc fonts

clean_packages:
	rm -rf $(PACKDIR)

clean_coc:
	-chmod -R u+w $(COCEXTDIR)/coc-go-data
	rm -rf $(COCDIR)
