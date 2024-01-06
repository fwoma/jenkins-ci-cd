#!/bin/sh

echo "########################"
echo "*** Preparing to push ***"
echo "########################"

##REGISTRY="linuxfacilito.online:5043"
IMAGE="nginx"  # Change this to "nginx"
TAG="latest"  # You can use a specific version or tag

echo "*** Logging in ***"
docker login -u woma702 -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$TAG $REGISTRY/$IMAGE:$TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$TAG
