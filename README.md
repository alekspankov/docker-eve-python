Eve Docker Image
==================

[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/aleksxp/docker-eve-python/)

Building image for Eve ([EVE Homepage](http://python-eve.org/)).

Author: Alexander Pankov <ap@wdevs.ru>

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

Build from Dockerfile
---------------------

1. Run ```docker pull python:2.7-onbuild``` to upgrade your local version of base Python image.
1. Clone git repository:
    ```
    git clone https://github.com/alekspankov/docker-eve-python.git
    ```
1. Change directory:
    ```
    cd docker-eve-python
    ```
    
1. Edit **Dockerfile** according your needs.
1. Run docker build command (don't omit dor at the end):
    ```
    docker build -t docker-eve-python .
    ```
1. Use your new image:
    ```
    docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo docker-eve-python
    ```

More info
---------

1. **requirements.txt** uses Version Specifiers (see [PEP-0440](https://www.python.org/dev/peps/pep-0440/)).
1. Use [Github Issues](https://github.com/alekspankov/docker-eve-python/issues) for bug reports / improvement suggestions. 
