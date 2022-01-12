CONSOLE := docker-compose run -w /app --rm console
MAKEFLAGS += --silent

container:
	docker-compose build

console:
	$(CONSOLE)
