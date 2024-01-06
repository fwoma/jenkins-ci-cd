#!/bin/sh

echo "########################"
echo "*** Preparing to push ***"
echo "########################"


IMAGE="nginx"  
TAG="latest"  

echo "*** Logging in ***"
docker login -u woma702 -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$TAG $REGISTRY/$IMAGE:$TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$TAG
