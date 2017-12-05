.PHONY: publish build docker install dev run

SSH=ssh cirnokne@155.94.234.2 -p 2147
BRANCH=$(shell git rev-parse --abbrev-ref HEAD)

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
	@echo "WARNING: Publishing the last checkout (not the current 'condition')."
	@echo "branch: $(BRANCH)"
	git push origin $(BRANCH)
	$(SSH) "cd public_html/$(BRANCH) && git pull origin && composer install && composer update"
