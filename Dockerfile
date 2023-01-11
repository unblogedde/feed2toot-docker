FROM python:3.11.1-slim@sha256:a06af664180d0c0620e648cd1e38e4b241362225ba7fd6c62308606e9a9e8d03

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
