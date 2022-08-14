FROM python:3.10.5-slim@sha256:f9f03f46267e182193544299504687e711c623e2a085323138f94ed9b01ce641

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
