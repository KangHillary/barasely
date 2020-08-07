#!/bin/sh
echo "Starting the tests ..."
python3 manage.py jenkins --enable-coverage
echo "completed tests..."
exec "$@"