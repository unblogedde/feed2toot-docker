FROM python:3.11.5-slim@sha256:3ed2e301a71798d3b645dcc6cc6eb33cd4670a462d50fbad9700cd953ff897fa

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
