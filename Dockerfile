FROM python:3.11.4-slim@sha256:33ce408fc834e7aa283ba1bd0f24f590c3185e641e949f9c0eb1c29d93b205a8

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
