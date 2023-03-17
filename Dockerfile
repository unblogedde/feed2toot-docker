FROM python:3.11.2-slim@sha256:1d2b7101658e795e4d878d3f54f3354838630e1d16f5868ea18b338c12bb92c9

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
