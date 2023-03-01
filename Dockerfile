FROM python:3.11.2-slim@sha256:71fc9914be8fc0a3e679bfbf35e46e2b76e4086fe8cc414896a7e83105c46b07

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
