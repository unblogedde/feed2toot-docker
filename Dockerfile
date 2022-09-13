FROM python:3.10.7-slim@sha256:c212a18a48efd4de1d6455f197538563d9cc312775761f14c50866c9a7eabd0e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
