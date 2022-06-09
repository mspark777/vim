
help:
	@cat Makefile

all: packages languages

packages:
	make -C pack/mspark777 install

languages:
	make -C ls all
