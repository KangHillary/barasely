#!/bin/sh
echo "Starting the tests ..."
python manage.py test
echo "completed tests..."
exec "$@"