FROM python:3.11.2-slim@sha256:28e5366ce5c423639950d3962b668730535da08cd235bdacef32171e26cd2b5c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
