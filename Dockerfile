FROM python:3.11.2-slim@sha256:9f81017bd12a86c4dbe67c75ce727dd1879c410fdbdecd8f51b6a40a8d402b2f

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
