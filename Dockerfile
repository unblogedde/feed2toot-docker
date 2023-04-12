FROM python:3.11.3-slim@sha256:4765de0178e2207a65f9bf622c550271cda5b80e6f911b40b2e81538761d01a2

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
