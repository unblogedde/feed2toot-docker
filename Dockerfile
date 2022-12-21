FROM python:3.11.1-slim@sha256:e8d1546d7b15beba782cd56507b6c2276eb52898efe1a9b8623269bc194dc23a

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
