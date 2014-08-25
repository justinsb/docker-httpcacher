FROM ubuntu:14.04
MAINTAINER Justin Santa Barbara "justin@fathomdb.com"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install squid-deb-proxy

RUN ln -s /cachedata /var/cache/squid-deb-proxy
VOLUME ["/cachedata"]

EXPOSE 8000:3128

ENTRYPOINT ["/start.sh"]

ADD files /