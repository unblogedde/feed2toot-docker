FROM python:3.11.5-slim@sha256:54382be9d1d8a0e042e17b123485830f896d81414288d5a755dde9bec71b1a84

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
