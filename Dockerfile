FROM python:3.11.3-slim@sha256:daa44c420f7d95ca740b5665cb1cc6ce35436ef576f6a5c2fd32fa886f03c52e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
