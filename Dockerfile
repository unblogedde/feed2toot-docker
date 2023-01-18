FROM python:3.11.1-slim@sha256:22425d7178ff023c501b32b1bdaa2e99ccb20a48e2dc7e3ac08c5dc6282aca46

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
