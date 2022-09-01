startdir=${HOME}/.local/share/nvim/site/pack/my/start
cocdir=${HOME}/.config/coc
cocextdir=$(cocdir)/extensions

help:
	@cat Makefile

packages: clean_packages
	${SHELL} ./install_packages.sh $(startdir)

coc: clean_coc
	nvim -R -c 'CocInstall -sync coc-tsserver coc-rust-analyzer coc-go coc-elixir @yaegassy/coc-tailwindcss3 coc-pyright|qa!'
	nvim -R -c 'CocInstall -sync coc-sh coc-css coc-git coc-html coc-json coc-yaml coc-eslint coc-docker coc-swagger coc-svg coc-toml coc-snippets|qa!'

languages:
	make -C ls all

all: packages coc languages

clean_packages:
	rm -rf $(startdir)

clean_coc:
	-chmod -R u+w $(cocextdir)/coc-go-data
	rm -rf $(cocdir)
