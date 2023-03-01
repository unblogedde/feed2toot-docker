FROM python:3.11.2-slim@sha256:5e15309da0daa20a7b3830c8a2abb0d52f85a1331baa92cc8cab2843f880b0cf

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
