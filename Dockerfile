FROM python:3.10.7-slim@sha256:a4c70958d4e4839c3b232338ddd3e3525260a6fdea8b53bbe48745530cd119ce

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
