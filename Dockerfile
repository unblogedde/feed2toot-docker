FROM python:3.11.5-slim@sha256:797bc8c5c7b5a9b6e7d73ce8b1c7d87c38ed5d53ec397341a32d80a6763ede32

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
