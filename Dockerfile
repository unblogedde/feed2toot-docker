FROM python:3.10.7-slim@sha256:bbfaa9d5461b696f49648f1f9fad1326b6b73d53eb3e9148e5bf867763763bec

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
