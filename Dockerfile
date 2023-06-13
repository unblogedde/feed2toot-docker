FROM python:3.11.4-slim@sha256:0f0fca29964da4f2693347a5c67d726e3a71b37119c1d3440e6d452f352b6cc8

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
