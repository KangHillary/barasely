#!/bin/sh
echo "Starting the tests ..."
python manage.py jenkins
echo "completed tests..."
exec "$@"