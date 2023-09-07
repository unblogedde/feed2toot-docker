FROM python:3.11.5-slim@sha256:0593057b0df53babbbd6c2138b5059a6a9d124ea7ca09700d98e10a8a83019cb

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
