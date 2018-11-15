Eve Docker Image
==================

[![Docker Automated buil](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg?maxAge=2592000?style=flat-square)](https://hub.docker.com/r/aleksxp/docker-eve-python/)

![GitHub](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square)


Building image for Eve ([EVE Homepage](http://docs.python-eve.org/en/latest/index.html)).

Author: Alexander Pankov <ap@wdevs.ru>

### Tags

#### `:latest`
Current package version is 0.3.0, includes:

- Python 3.7
- [Eve 0.8.1](https://github.com/pyeve/eve)
- [Flask CORS 3.0.7](https://flask-cors.readthedocs.io/en/latest/)

#### `:legacy`

- Python 2.7
- [Eve 0.8.0](https://github.com/pyeve/eve)
- [Flask CORS 3.0.6](https://flask-cors.readthedocs.io/en/latest/)

### Prerequisites

- [Docker](https://docs.docker.com/) 
- [Docker Compose](https://docs.docker.com/compose/) - *optional*

### Dependencies

This image requires [Mongo](https://hub.docker.com/_/mongo/). Pull and run it:

```bash
$ docker run -d --name some-mongo mongo
```

RUN
---

#### Latest

```bash
$ docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo aleksxp/docker-eve-python
```

#### Legacy

```bash
$ docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo aleksxp/docker-eve-python:legacy
```

RUN with docker-compose
-----------------------

The repo includes **docker-compose.yml**. To use it run:

```bash
$ docker-compose up -d
```

Build from Dockerfile
---------------------

### Via Makefile

The repository contains `Makefile` to simply build `latest` tagged image. 

```
    $ git clone https://github.com/alekspankov/docker-eve-python.git

    $ cd docker-eve-python
```

- _Edit `Dockerfile` according your needs._

```
    $ make
```

That's it, your image is built.

### Manual build

#### Latest

1. Run ```docker pull python:3.7``` to upgrade your local version of base [Python image](https://hub.docker.com/_/python/).
1. Clone git repository:
    ```
    $ git clone https://github.com/alekspankov/docker-eve-python.git
    ```

#### Legacy

1. Run ```docker pull python:2.7-onbuild``` to upgrade your local version of base [Python image](https://hub.docker.com/_/python/).
1. Clone git repository:
    ```
    $ git clone -b legacy https://github.com/alekspankov/docker-eve-python.git
    ```

#### Common actions

1. Change directory:
    ```
    $ cd docker-eve-python
    ```
    
1. Edit `Dockerfile` according to your needs.
1. Edit `requirements.txt` according to your needs.
1. Run docker build command (don't omit dor at the end):
    ```
    $ docker build -t docker-eve-python .
    ```
1. Use your new image:
    ```
    $ docker run -d --name some-eve -p 5000:5000 -v $(pwd):/usr/src/app --link some-mongo:mongo docker-eve-python
    ```

More info
---------

1. **requirements.txt** uses Version Specifiers (see [PEP-0440](https://www.python.org/dev/peps/pep-0440/)).
1. Use [Github Issues](https://github.com/alekspankov/docker-eve-python/issues) for bug reports / improvement suggestions. 
1. Check [Wiki](https://github.com/alekspankov/docker-eve-python/wiki) for additional documentation.
