#!/usr/bin/env sh

# perintah untuk membuat Docker Image dari Dockerfile yang telah dibuat
docker build -t item-app:v1 .

# melihat daftar image di lokal
docker images

# mengubah nama image agar sesuai dengan format Docker Hub
docker image tag item-app:v1 musshal/item-app:v1
docker rmi item-app:v1

# login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u musshal --password-stdin

# mengunggah image ke Docker Hub
docker push musshal/item-app:v1