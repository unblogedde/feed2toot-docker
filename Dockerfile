FROM python:3.11.4-slim@sha256:1966141ab594e175852a033da2a38f0cb042b5b92896c22073f8477f96f43b06

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
