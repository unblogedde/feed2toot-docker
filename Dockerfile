FROM python:3.11.4-slim@sha256:387926ecb8ff2cf241feec8e1c5d0dac0cd2d6e81f1bddc54e945813ed86b98d

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
