FROM python:3.11.2-slim@sha256:dadd4ad86be2e871663d0a4b8fcffb01ff56a078a0779cd116cfccb1aef61024

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
