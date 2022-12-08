FROM python:3.11.1-slim@sha256:d59590772fc86eb620a02d2f99358529bbb1e48f8b883adfe00075ac1489de5f

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
