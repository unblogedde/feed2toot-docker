FROM python:3.11.3-slim@sha256:21f52a9f1f44226189c22afee030e9cb557109fcf407b4e4cf5997304299889e

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
