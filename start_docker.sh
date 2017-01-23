#!/bin/bash


docker build -t duttadeep55/test-node .

docker run -d --name test-node -p 8080:8080 duttadeep55/test-node
