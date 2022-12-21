FROM python:3.11.1-slim@sha256:3436e8bb08be567fd46cf3529dbda478b9d779f7db003a5b43607ce2dbf04c12

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
