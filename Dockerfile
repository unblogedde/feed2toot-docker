FROM python:3.11.1-slim@sha256:8f3997244336ad0f067ad693f85906263a21a7f571b6577a64134aba889bc95e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
