#!/bin/bash
current_lcd=`pwd`
echo $current_lcd
sleep 10
source $1/bin/activate
exec nohup uwsgi --ini $1/DjangoBlog/uwsgi.ini >/dev/null 2>&1 &
