FROM python:3.11.1-slim@sha256:3bbb40b6e3ff9370ee2316fff5dbef3f831b70084e56b9f498aa3e5b9bdbeb0e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
