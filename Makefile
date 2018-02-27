GO := go
# The binary to build (just the basename).
BIN := travis-play
# Version from git tag or commit hash
VERSION := $(shell git describe --tags --always --dirty)

all: build

help:
	@echo "version - output application version"
	@echo "build - build project"
	@echo "clean - clean build files"

version:
	@echo $(VERSION)

build:
	@$(GO) build \
		-o ./bin/${BIN} \
		-ldflags "-X main.version=${VERSION}" \
		.
	@echo "==> Build successfully completed"

clean:
	@rm -rf ./bin
	@echo "==> Successfully cleaned"

.PHONY: all help build clean
