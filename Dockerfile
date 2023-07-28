FROM python:3.11.4-slim@sha256:ca1aaa846c52ec47ef74c1ef37e16be3d58cadabbfa2e2f955b6540e53a0874f

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
