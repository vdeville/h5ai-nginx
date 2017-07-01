#!/bin/bash

# Generate password protected area
htpasswd -cb /etc/nginx/.htpasswd ${USERNAME} ${PASSWORD}

# Start php fpm
/etc/init.d/php7.0-fpm start

# Start nginx
nginx -g "daemon off;"
