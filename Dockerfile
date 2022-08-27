FROM python:3.10.6-slim@sha256:dff7fd9200421a8c65e020af221a21c8aab784c5c8a8d55c64a095b645209d77

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
