set -e;

reset
docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/ -s