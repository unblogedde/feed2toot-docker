FROM python:3.11.4-slim@sha256:6bb03962160ee1210634ccac46ca2ac979ab3c4b1fcb30aae79238979b5bd8d6

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
