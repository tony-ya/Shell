#!/bin/bash

MY_URL="http://www.****.com/"
RESULT=`curl -I $MY_URL|grep "HTTP/1.1 502"`

if [ -n "$RESULT" ]; then
    /etc/init.d/php5-fpm restart
fi
