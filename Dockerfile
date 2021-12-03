FROM python:3.10.0-slim@sha256:ad540a471260fee5e5e1a99ee2acf142efe8c279a7a54315160d8033ba88f0d8

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
