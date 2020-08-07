#!/bin/sh
echo "Starting the tests ..."
python3 manage.py jenkins
echo "completed tests..."
exec "$@"