FROM python:3.10.4-slim@sha256:557745c5e06c874ba811efe2e002aff21b6cc405b828952fcfa16dea52d56dbb

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
