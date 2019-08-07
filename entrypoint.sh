#!/bin/bash
mo /app/index.html.template > /usr/share/nginx/html/index.html
exec "$@"