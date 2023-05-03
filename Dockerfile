FROM python:3.11.3-slim@sha256:1a08f8f5795a7ac1deeec92f2a0c313b8eea08a234aa524cedc7bf09d29361c4

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
