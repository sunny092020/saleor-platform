set -e;

reset
# docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/graphql/user_activity_tracker/tests/test_user_activity_tracker.py::test_do_activities_via_api -s
# docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/graphql/gallery/tests/test_gallery.py::test_top_gallery_by_promotion_type -s
# docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/ -s
docker-compose run --rm api pytest --excelreport=report.xls --reuse-db -n0 saleor/graphql/product/tests/test_product_merchant.py::test_top_selling_products -s
