FROM python:3.11.4-slim@sha256:a1a79fbb21eba448a22d174baeade1659cadab8dda6b95abd8bdadecc91398e9

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
