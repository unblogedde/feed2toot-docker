FROM python:3.10.8-slim@sha256:b8f59f7f739c8e1dbb1f7cdd9b5abf4b198cae4ed23b5034cdc5b6e448c38e16

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
