FROM python:3.12.0-slim@sha256:fde1011b3a944e4e750982480905b563fd08a0f3fde49b963b05d8ebf6846ce8

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
