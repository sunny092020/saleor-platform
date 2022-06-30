set -e;

docker-compose run --rm api py.test -n=auto  --reuse-db $1