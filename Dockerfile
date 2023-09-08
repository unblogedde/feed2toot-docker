FROM python:3.11.5-slim@sha256:9bd704d713fde6cebdd54779c121da9c3ddd28808797e4f93d58af0050e8ba70

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
