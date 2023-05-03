FROM python:3.11.3-slim@sha256:551c9529e77896518ac5693d7e98ee5e12051d625de450ac2a68da1eae15ec87

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
