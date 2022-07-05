# build image
docker build --platform=linux/amd64 -t $IMAGE_NAME:$IMAGE_TAG . < Dockerfile
