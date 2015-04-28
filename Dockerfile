FROM hhcordero/docker-apache-php

MAINTAINER Hector Cordero <hhcordero@gmail.com>

# Update/upgrade packages
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# Install application and dependencies
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install \
        mysql-client \
        php5-geoip \
        php5-curl

ADD ./scripts/install_db.sh /install_db.sh
RUN chmod 755 /install_db.sh

ENV DB_FILE init_db.sql
ADD ./db/$DB_FILE ./$DB_FILE

EXPOSE 80

CMD ["/install_db.sh"]
