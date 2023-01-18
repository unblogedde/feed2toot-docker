FROM python:3.11.1-slim@sha256:79095e304e31196bad049e74f666508ac81909d201ec9371f9f3cd68fa365cf6

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
