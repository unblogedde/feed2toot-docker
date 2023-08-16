FROM python:3.11.4-slim@sha256:325f5b01c085ecf91eb54e0f97bf1bcd1a08e9461dd6c6d7419971c6f6414127

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
