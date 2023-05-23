FROM python:3.11.3-slim@sha256:3eb86ca3a8dbe236c5e5863c269d5d87b3e2dbe5f8e7d198676640aafa8b432c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
