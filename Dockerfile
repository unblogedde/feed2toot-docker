FROM python:3.11.2-slim@sha256:b04f822a9ffdd5acba9e0d042d39a96227ed172d6faced65548ba28fb4c0b5b4

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
