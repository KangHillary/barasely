#!/bin/sh
echo "Starting the tests ..."
docker-compose run web python manage.py jenkins
echo "finisjed steop one the tests ..."
#python manage.py jenkins
echo "completed tests..."
exec "$@"