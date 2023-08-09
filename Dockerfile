FROM python:3.11.4-slim@sha256:15f5cb87ed9e06f4ce846ff758831160a76248a4bef1111703886800bd5f673e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
