FROM python:3.10.7-slim@sha256:85f2829311b21b51c811cc204d33025b8bc71ac40879160c162aee5efb04ed47

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
