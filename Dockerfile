FROM python:3.11.4-slim@sha256:6d79a6cfdec89007baad76f1184dfa7cf6075658730359e6d77b7515db2095c5

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
