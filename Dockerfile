FROM python:3.12.0-slim@sha256:445e0de121b40630aea39f92ee643876dc508bcad1ffc45e610377aacdd1e056

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
