FROM python:3.11.1-slim@sha256:555dcc94587b4101de48664b45b19f17e099a3ab236dec629791f366e2f2e83c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
