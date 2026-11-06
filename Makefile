PHONY: all fmt

all: fmt

fmt:
	shfmt -w -i 4 bootstrap.sh
	npx prettier --write README.md
	mbake format Makefile