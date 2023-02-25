FROM python:3.11.2-slim@sha256:62b6b191aa0ef99be88a845619f6b19ae8bbffde6e77610b23db92995187ed7d

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
