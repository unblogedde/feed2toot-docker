FROM python:3.11.1-slim@sha256:7b33e3ec70b28b623e35ca420c6cfe4845c1f7efa8f366cb0c6a912ee9f14039

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
