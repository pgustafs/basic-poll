#!/usr/bin/env bash

# Migrate the Database
python3 manage.py migrate
status=$?
if [ $status -ne 0 ]; then
  echo "Failed to migrate Django DB: $status"
  exit $status
fi

# Create Django superuser
if [ -n "$DJANGO_SUPERUSER_EMAIL" ] && [ -n "$DJANGO_SUPERUSER_PASSWORD" ] ; then
    python3 manage.py createsuperuser --user=admin --no-input
    status=$?
    if [ $status -ne 0 ]; then
      echo "Failed to create superuser: $status"
      exit $status
    fi
fi

# Collect static files
#python3 manage.py collectstatic
#status=$?
#if [ $status -ne 0 ]; then
#  echo "Failed to collect Static files: $status"
#  exit $status
#fi

# run application in dev mode
## python3 manage.py runserver --settings=base.settings.development
python3 manage.py runserver 0.0.0.0:8000