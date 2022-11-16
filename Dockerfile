FROM python:3.11.0-slim@sha256:c320377f5b91624b80aae3a8925aa32793bd0272339848ef7f26053908ccbfd2

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
