FROM python:3.11.2-slim@sha256:7f0ea9ea95d32db6ee8f4973aa76d777923b0cdd83ebec6fd63a20fc7d08f4cf

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
