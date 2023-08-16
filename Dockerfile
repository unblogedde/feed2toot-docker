FROM python:3.11.4-slim@sha256:15ac591c622159a5f890247045dcb18a26a1b32802bb5d479e0c728b123add72

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
