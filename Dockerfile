FROM python:3.11.4-slim@sha256:4b2e5faf103be72abb65046501a89f8feaef28c1148fc2f9b3326e31694ee735

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
