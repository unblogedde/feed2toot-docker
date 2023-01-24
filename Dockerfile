FROM python:3.11.1-slim@sha256:3d260508893319ee271989fe16c0ddf13c710ec5ce1d0708cda7bc30da8389e7

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
