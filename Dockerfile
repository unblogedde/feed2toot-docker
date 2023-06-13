FROM python:3.11.4-slim@sha256:32fc55d3f7737d51420ea77ed3faeab61248a167812d2e2546effc9df05d7a78

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
