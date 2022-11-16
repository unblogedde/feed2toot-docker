FROM python:3.11.0-slim@sha256:1cd45c5dad845af18d71745c017325725dc979571c1bbe625b67e6051533716c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
