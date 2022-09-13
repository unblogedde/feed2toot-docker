FROM python:3.10.7-slim@sha256:90b7cdff7f8bdbf43778bd5131bb62f7c83495462f562bd62baefdb69bf09bca

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
