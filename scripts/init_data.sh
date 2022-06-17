#!/bin/bash

docker-compose run --rm api python3 manage.py migrate
docker-compose run --rm api python3 manage.py collectstatic --noinput
docker-compose run --rm api python3 manage.py populatedb --createsuperuser
./scripts/init_pg.sh