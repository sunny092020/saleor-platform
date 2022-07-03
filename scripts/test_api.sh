set -e;

docker-compose run --rm api pytest --verbose --reuse-db -n0 saleor/account/tests/test_account.py::test_customers_doesnt_return_duplicates -s