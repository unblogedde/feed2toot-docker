FROM python:3.11.0-slim@sha256:0e972c496ef218f12e4d71a4a71db9c8aa26044bb6374b96687c900b08ca3f24

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
