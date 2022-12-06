FROM python:3.11.0-slim@sha256:19b9bf2024a93511d0a2825e771c4ed2221b42f111ce841868dc42343260bde5

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
