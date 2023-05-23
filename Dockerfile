FROM python:3.11.3-slim@sha256:6c0b067294c78ee6538cc9d6163fd1653797d0f4fd567e55703a5365c7757138

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
