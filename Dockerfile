FROM python:3.10.8-slim@sha256:789c155afbc547989fa56b5b50601bed9a5a1cf152fd0f42125082e6996b2674

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
