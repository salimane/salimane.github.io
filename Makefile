all: build

help:
	@echo ""
	@echo "-- Help Menu"
	@echo ""
	@echo "   1. make              - build the image"
	@echo "   2. make run          - run salimane.github.io on http://$(docker-machine ip docker-vm):8181"
	@echo "   3. make rm           - destroy salimane.github.io container"
	@echo "   4. make rebuild      - rebuild salimane.github.io container"
	@echo "   5. make restart      - restart salimane.github.io container"
	@echo "   6. make int          - enter the salimane.github.io container on with a bash prompt"

default: build

build:
	docker build --rm -t salimane/salimane.github.io .

run:
	docker run --name salimane.github.io -v `pwd`:/usr/share/nginx/html -p 8181:80 -d salimane/salimane.github.io

int:
	docker exec -it salimane.github.io bash

rm:
	docker stop salimane.github.io
	docker rm -f salimane.github.io

rebuild: rm build run

restart: rm run
