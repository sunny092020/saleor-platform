set -e;

reset
docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/graphql/gallery/tests/test_gallery.py::test_get_my_gallery -s