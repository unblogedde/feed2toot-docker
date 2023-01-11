FROM python:3.11.1-slim@sha256:c45298054b25bc559fc845cc9dff62c0b09af02b91f2dac6d02ddc7af5677fd6

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
