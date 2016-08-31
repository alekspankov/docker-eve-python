Eve Docker Image
==================

[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/aleksxp/docker-eve-python/)

Building image for Eve ([EVE Homepage](http://python-eve.org/))

### Prerequisites

This image requires [Mongo](https://hub.docker.com/_/mongo/). Pull and run it:

```bash
docker run -d --name some-mongo mongo
```

RUN
---

```bash
docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo aleksxp/docker-eve-python
```

RUN with docker-compose
-----------------------

The repo includes **docker-compose.yml**. To use it run:

```bash
docker-compose up -d
```
