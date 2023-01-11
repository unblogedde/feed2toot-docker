FROM python:3.11.1-slim@sha256:f59efc420f28de64c4e22dfb8ad29e19085e34542d2b9be4bf5b19efcada89aa

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
