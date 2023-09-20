FROM python:3.11.5-slim@sha256:31adb75f16e54454ac10dc6408b83a976d5698ca98728517500dd637caa1b8ea

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
