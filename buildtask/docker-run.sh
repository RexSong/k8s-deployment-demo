#!/usr/bin/env bash

CMD=$1

if [ ! -n "$CMD" ] ;then
    CMD=./entrypoint.sh
fi

docker rm -f demo-service || echo "No started transaction service found"

docker run -t -p 9999:9999 --rm --name=demo-service \
         registry.cn-hangzhou.aliyuncs.com/westerncampus/rex-demo:latest \
         $CMD &