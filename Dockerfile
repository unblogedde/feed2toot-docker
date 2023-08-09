FROM python:3.11.4-slim@sha256:58ae46e33898d24d1b5a25260f5890f3f27979f4a3377171e018d1868cf2d87c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
