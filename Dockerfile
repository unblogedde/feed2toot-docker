FROM python:3.11.0-slim@sha256:7de7f8d769f5a99b77f8d3e27b2b581301545c36655d3bbb84d6fd0c300496a1

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
