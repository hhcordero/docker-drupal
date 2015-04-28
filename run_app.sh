#!/bin/bash
docker run \
            --name docker_drupal \
            --volume ~/app:/app \
            --link docker_mysql_drupal:mysql \
            --publish 80:80 \
            --detach \
        hhcordero/docker-drupal
