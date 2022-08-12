#!/bin/bash

set -e;

docker-compose run --rm api python3 manage.py makemigrations --merge
