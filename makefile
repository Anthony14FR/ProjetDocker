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

help:
	@echo "up: Start the containers"
	@echo "down: Stop the containers"
	@echo "build: Rebuild the containers"
	@echo "reset: Stop, remove and start the containers"
	@echo "help: Show this help message"
