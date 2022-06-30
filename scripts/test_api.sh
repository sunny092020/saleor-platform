set -e;

docker-compose run --rm api py.test -n=0  --reuse-db $1