FROM python:3.11.0-slim@sha256:2d49cbc6900ee5e4801492b3b991e3c20b81ff5161ded93f93d691d179c119fa

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
