FROM python:3.11.4-slim@sha256:7ae02e72226c12a65361f7fcf4428ab53b402abcbfc377720b61314cc3bed266

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
