FROM python:3.11.1-slim@sha256:8d6e5ee51e1aedd4050c49bc27f0cf59f6cf21d39c3e6977983ae09aab21fbb7

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
