FROM python:3.11.5-slim@sha256:ecfc47582a2b09b12a7a14592d8be1980d985a97d3453960aa15a36e6355e467

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
