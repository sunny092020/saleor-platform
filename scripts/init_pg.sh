#!/bin/bash

set -e;

USER="saleor"
export PGPASSWORD="saleor"

DB_SERVER="127.0.0.1"
DB_NAME="saleor"

DB_PORT="5432"

psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.merchant_merchant ( user_id ) FROM 'data/merchant_merchant.csv' delimiter ',' csv header;"
psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.merchant_merchant_products ( merchant_id, product_id ) FROM 'data/merchant_merchant_products.csv' delimiter ',' csv header;"
