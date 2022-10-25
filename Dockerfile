FROM python:3.11.0-slim@sha256:f8cc89f5e47347703ec0c2b755464d7db2fa16f255ab860c4b24ba6ef2402020

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
