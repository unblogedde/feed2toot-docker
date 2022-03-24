FROM python:3.10.3-slim@sha256:5e3ef2605e09523e679018ee6cb810a0f5c4382e636f80f33e4c4edb66b1d3ca

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
