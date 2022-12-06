FROM python:3.11.0-slim@sha256:ffd099b82333f4dc4727c54784be249470e60364825fb6ede05090b19440250c

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
