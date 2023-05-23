FROM python:3.11.3-slim@sha256:c3f5ba0dc0ecd6906d4fbe75a6353b1c81082faf26b53d5731e81866d0362f03

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
