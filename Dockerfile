FROM python:3.10.8-slim@sha256:a26cf87511533eafdd8f42dab36571d02f33a821196c4e5cb5e66bfa980f5b1d

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
