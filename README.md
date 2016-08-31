Eve Docker Image
==================

[EVE Homepage](http://python-eve.org/)

### Prerequisites

This image requires [Mongo](https://hub.docker.com/_/mongo/). Pull ansd run it:

```bash
docker run -d --name some-mongo mongo
```

RUN
---

```bash
docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo aleksxp/docker-python-eve
```