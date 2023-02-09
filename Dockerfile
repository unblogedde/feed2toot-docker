FROM python:3.11.2-slim@sha256:bacbf34dce68ade6a2a77cec2888e3cff97497d41d082b5c338e7996016ba590

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
