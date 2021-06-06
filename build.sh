#/bin/bash

set -exuo pipefail

rm -rf nodejs || 0
rm -rf nodejs
docker build -t typeorm-pg-layer-nodejs .
CONTAINER=$(docker run -d typeorm-pg-layer-nodejs false)
docker cp $CONTAINER:/var/task/layer nodejs/
docker rm $CONTAINER

# delete unnecessary files
# ...
