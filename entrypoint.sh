#!/bin/sh 
set -ex;
bash -c "/usr/bin/env >/app/myenv";
mo  -s=/app/myenv /app/index.html.template > /usr/share/nginx/html/index.html;
rm -rf /app/myenv;
exec "$@"