FROM python:3.11.0-slim@sha256:95dade48bfef595974fbcf0c2c1cadc7baaaeb14ad6eb32a36754285ad10d2de

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
