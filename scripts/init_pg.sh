#!/bin/bash

set -e;

USER="saleor"
export PGPASSWORD="saleor"

DB_SERVER="127.0.0.1"
DB_NAME="saleor"

DB_PORT="5432"

psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.auth_group ( name ) FROM 'data/auth_group.csv' delimiter ',' csv header;"
psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.auth_group_permissions ( group_id, permission_id ) FROM 'data/auth_group_permissions.csv' delimiter ',' csv header;"
psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.account_user_groups ( user_id, group_id ) FROM 'data/account_user_groups.csv' delimiter ',' csv header;"
psql -h $DB_SERVER $DB_NAME -U $USER -w -c "\copy public.account_user_products ( user_id, product_id ) FROM 'data/account_user_products.csv' delimiter ',' csv header;"
