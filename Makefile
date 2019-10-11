KAFKA_TOPIC := test
KAFKA_MESSAGE := "Foo bar"

cli:
	node dist/server/cli.js -t $(KAFKA_TOPIC) $(KAFKA_MESSAGE)

dev:
	make kafka/daemon
	npm run watch

dev/stop:
	make kafka/stop

build:
	npm run build && npm run bundle

install:
	make kafka/install
	npm install

kafka/install:
	docker-compose build

kafka:
	docker-compose up --remove-orphans

kafka/daemon:
	docker-compose up --remove-orphans  -d

kafka/stop:
	docker-compose down

lint:
	npm run lint

server:
	node dist/server/server.js

