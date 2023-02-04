FROM python:3.11.1-slim@sha256:7bd2e567f1aa926f416c97c90c0ac65d0f650e3544d65355ab54bf20ef9bb356

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
