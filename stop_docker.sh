#!/bin/bash

echo "Stopping container..."
docker stop test-node
docker rm test-node

echo "Removing any orphaned images..."
docker images -q --filter "dangling=true" | xargs docker rmi

