#!/usr/bin/env bash
mvn clean package -Dmaven.test.skip=true
docker build --no-cache=true -f ./buildtask/dockerfile -t registry.cn-hangzhou.aliyuncs.com/westerncampus/rex-demo:latest ./
docker tag registry.cn-hangzhou.aliyuncs.com/westerncampus/rex-demo registry.cn-hangzhou.aliyuncs.com/westerncampus/rex-demo:latest
docker push registry.cn-hangzhou.aliyuncs.com/westerncampus/rex-demo:latest