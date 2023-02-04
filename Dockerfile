FROM python:3.11.1-slim@sha256:bd3da14b60b5767868fbdcc7f138a3407cc68510a979a09c8f8a150b5ff64eaa

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
