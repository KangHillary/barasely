#!/bin/sh
echo "Starting the tests ..."
python manage.py test &&
echo "completed tests..."
python manage.py runserver 0.0.0.0:8000

exec "$@"