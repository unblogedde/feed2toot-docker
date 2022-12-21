FROM python:3.11.1-slim@sha256:ce561bc7534116d9f875c68b8df9025329dae0a784aa4e730fce107814f041ee

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
