PACKDIR=${HOME}/.config/nvim/pack
STARTDIR=$(PACKDIR)/my/start
COCDIR=${HOME}/.config/coc
COCEXTDIR=$(COCDIR)/extensions

help:
	@cat Makefile

packages: clean_packages
	${SHELL} ./install_packages.sh $(STARTDIR)

coc: clean_coc
	nvim -R -c 'CocInstall -sync coc-tsserver coc-rust-analyzer coc-go @yaegassy/coc-tailwindcss3 coc-pyright coc-lua|qa!'
	nvim -R -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-yaml coc-eslint coc-docker coc-swagger coc-svg coc-toml|qa!'

all: packages coc

clean_packages:
	rm -rf $(PACKDIR)

clean_coc:
	-chmod -R u+w $(COCEXTDIR)/coc-go-data
	rm -rf $(COCDIR)
