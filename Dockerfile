FROM python:3.11.4-slim@sha256:5f6372ef5468369100c3c782a173d34724c99f0a9724b80fa56563a4353fad46

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
