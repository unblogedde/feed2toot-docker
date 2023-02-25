FROM python:3.11.2-slim@sha256:64eb3661444eb66fa45d5aaaba743f165990235dd7da61a1f5042c61e98da37a

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
