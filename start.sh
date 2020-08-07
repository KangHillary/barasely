#!/bin/sh
echo "Starting the tests ..."
python manage.py jenkins --enable-coverage
echo "completed tests..."
exec "$@"