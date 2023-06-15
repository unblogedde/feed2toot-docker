FROM python:3.11.4-slim@sha256:d242be7a9f54f53ec5a66638483b4f3358591cf0a41eba857279d2fea088bb64

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
