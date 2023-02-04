FROM python:3.11.1-slim@sha256:27e81ff01d472069b3fb417df6779217ccf1680694f223204f52376ea7efb167

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
