FROM python:3.11.1-slim@sha256:73368142f15ea7e914f16ad9afb12edbbdeab055761823ec66e9ce4c8cec1960

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
