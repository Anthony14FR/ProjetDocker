.PHONY: up down build reset

up:
	docker compose up -d

down:
	docker compose down -v

build:
	docker compose down -v
	docker compose build
	docker compose up -d

reset:
	docker compose down -v
	docker compose up -d
