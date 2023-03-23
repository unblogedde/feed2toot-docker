FROM python:3.11.2-slim@sha256:70c1b1a166d9bb86a5e74ac745333a6ad12929e5818120d9bd5fec8e2dd9fac0

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
