FROM python:3.11.4-slim@sha256:54065a36b5dfada92010a856935de942425f8f3088a983d150f44db637f92bf8

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
