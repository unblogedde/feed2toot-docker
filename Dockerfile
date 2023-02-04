FROM python:3.11.1-slim@sha256:c8cb27e18353c096873f85ce8e91d84efd556a3148fd1b710a725dea64780d84

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
