FROM python:3.11.0-slim@sha256:89fc213797abf7d2b266857d15293b51bbbecb9dc9325d8eec90a99b39237083

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
