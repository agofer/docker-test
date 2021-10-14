#!/usr/bin/env bash
# another line
echo "hello2"
service nginx start
uwsgi --ini uwsgi.ini