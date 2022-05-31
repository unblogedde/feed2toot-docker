FROM python:3.10.4-slim@sha256:43705a7d3a22c5b954ed4bd8db073698522128cf2aaec07690a34aab59c65066

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
