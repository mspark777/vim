
help:
	@cat Makefile

packages:
	make -C pack/mspark777 packages

coc:
	make -C pack/mspark777 coc

languages:
	make -C ls all

all: packages coc languages
