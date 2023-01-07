FROM python:3.11.1-slim@sha256:39cecc9cde774f9209ad26a0ab2dc4f5d10ba92d2913a835cebea3b402af8e8b

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
