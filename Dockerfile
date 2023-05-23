FROM python:3.11.3-slim@sha256:ffa8341abce66deb0619b7de39886fc0c06605692eeea8910733251ce490b0a4

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
