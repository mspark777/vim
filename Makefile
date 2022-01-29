
help:
	@cat Makefile

all: packages

packages:
	make -C pack/mspark777 install
