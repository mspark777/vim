.PHONY: bin

help:
	@cat Makefile

clean:
	rm -rf ~/.local/share/nvim/*
	rm -rf ~/.local/state/nvim/*

cleanall: clean
	rm lazy-lock.json

bin:
	mkdir -p bin
