FROM python:3.12.0-slim@sha256:c145aa0316fac3ee070373ad97ca2e4cd2d57eaf977db004dc201367fc52233a

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
