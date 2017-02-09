all: build

build:
	@docker build --tag=purewind/ubuntu:latest .

release: build
	@docker build --tag=purewind/ubuntu:$(shell cat VERSION) .