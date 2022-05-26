FROM python:3.10.4-slim@sha256:e266c9c8a5a11df3183675b60a0a61b8cf22a9eeb4b229af86dcd2daf0f4475a

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
