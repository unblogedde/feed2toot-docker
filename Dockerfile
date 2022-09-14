FROM python:3.10.7-slim@sha256:6de22c9cf887098265b7614582b00641c0c8c6735af538d0f267d6bb457634f1

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
