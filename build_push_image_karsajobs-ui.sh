#!/usr/bin/env sh

docker build -t musshal/karsajobs-ui:latest .

echo $PASSWORD_DOCKER_HUB | docker login -u musshal --password-stdin

docker push musshal/karsajobs-ui:latest