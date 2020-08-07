#!/bin/sh
echo "Starting the tests ..."
python3 manage.py test
echo "completed tests..."
exec "$@"