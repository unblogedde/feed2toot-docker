FROM python:3.11.5-slim@sha256:2a7efc1f6a7f28878fb784c80e2bd9ac1c5d26a39a3745cd08b473b9150787c6

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
