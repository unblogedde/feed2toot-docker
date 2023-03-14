FROM python:3.11.2-slim@sha256:fb8928249b04935201f3c96191d1dee3bf2fb5124abf7746cbd4f0654a825b6d

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
