FROM python:3.11.0-slim@sha256:0b49909d521f3c54981b401c2307b62d8b2f4b47d95e1223390ba3fc80810d80

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
