# Nyarlathotep

Purpose: my personal playground to play with technologies.

![Nyarlathotep](/docs/nyarlathotep.jpg)

> There was the immemorial figure of the deputy or messenger of hidden and terrible powers—the "Black Man" of the witch-cult, and the "[Nyarlathotep](https://en.wikipedia.org/wiki/Nyarlathotep)" of the Necronomicon.

"The Dreams in the Witch House" - H.P. Lovecraft (1932)

## Technologies
- [x] [Apache Kafka](https://kafka.apache.org/intro) using [kafka-node](https://github.com/SOHU-Co/kafka-node).
- [ ] [Worker Threads](https://nodejs.org/api/worker_threads.html)
- [x] [WebSockets](https://developer.mozilla.org/pt-BR/docs/WebSockets)
- [x] [TypeScript](http://www.typescriptlang.org/docs/home.html)
- [x] [Web Components](https://lit-element.polymer-project.org/)
- [x] [Rollup.js bundles](https://rollupjs.org/guide/en/)

## Architecture

![Architecture](/docs/architecture.png)

## Install

```shell
make install
```

## Build

This project is written in TypeScript. Client-side is bundled with Rollup.
Therefore, you must build the source code:

```shell
make build
```

## Dev

- Start Kafka, bundle and watch files for development. Kafka is running on port `localhost:9092`.
```shell
make dev
```

- Start Server
```shell
make server
```

- Open the client on browser
http://localhost:10001

- Stop Kafka
```shell
make stop
```

## Send messages using the CLI

- Send test message on the test topic
```shell
make cli
```

- Send custom message on the test topic
```shell
make cli KAFKA_MESSAGE="Foo bar"
```

- Send custom message on the custom topic
```shell
make cli KAFKA_TOPIC=test KAFKA_MESSAGE="Foo bar"
```








