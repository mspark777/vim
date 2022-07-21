
help:
	@cat Makefile

packages:
	make -C pack/mspark777 install

languages:
	make -C ls all

all: packages languages
