[![Build Status](https://travis-ci.org/tonyganga/ansible-kibana.svg?branch=master)](https://travis-ci.org/tonyganga/ansible-kibana)

Kinship Verifier
=========

Kinship Verifier

Requirements
------------

* [Docker](https://www.docker.com/) >= 17.06.0-ce
* [Python](https://www.python.org/downloads/release/python-360/) 3.6

Dependencies
------------


```
Django==1.11.2
django-extra-fields==0.9
djangorestframework==3.6.3
olefile==0.44
Pillow==4.1.1
pytz==2017.2
```

Getting Started
--------------

To build the project dependencies run the following.

```
$ make install
```

This will create a `virtualenv` with Python 3.6 and install all requirements found in `requirements.txt`. The freeze command is ran to verify dependencies are locked.

To run the project run the following.

```
$ make start
Starting kinshipverifier_db_1 ... done
Starting kinshipverifier_web_1 ... done
```

This will start a `docker-compose` task and run two containers for you.

```
$ docker ps

CONTAINER ID        IMAGE                 COMMAND                  CREATED             STATUS              PORTS                    NAMES
e006fcc2581d        kinshipverifier_web   "python3 manage.py..."   23 minutes ago      Up About a minute   0.0.0.0:8000->8000/tcp   kinshipverifier_web_1
710361d0cfb1        postgres              "docker-entrypoint..."   About an hour ago   Up 2 minutes        5432/tcp                 kinshipverifier_db_1
```
