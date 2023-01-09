#!/usr/bin/env sh

docker build -t musshal/karsajobs:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u musshal --password-stdin

docker push musshal/karsajobs:latest