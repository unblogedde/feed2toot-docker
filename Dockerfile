FROM python:3.11.2-slim@sha256:9ab472fc54e9ed1064c97ff26baa16f3aad8009c03e9adf63d408f39ad3dc983

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
