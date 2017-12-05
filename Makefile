.PHONY: publish build docker install dev run

install:
	npm install

dev:
	node_modules/.bin/guilp dev

build: docker

docker:
	docker build -t dan-l-php .

run: build
	docker run --rm -p 80:80 dan-l-php

publish:
	echo "Publishing somehow."
