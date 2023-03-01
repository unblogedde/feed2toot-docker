FROM python:3.11.2-slim@sha256:b0a67a38142a1ecb8288c299e9072d7b5704643439e7eed835e5dcaae47bb7c0

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
