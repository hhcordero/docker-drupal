#!/bin/bash
docker run \
            --name docker_drupal \
            --volume ~/app:/app \
            --link mysql:mysql \
            --publish 80:80 \
            --detach \
        hhcordero/docker-drupal
