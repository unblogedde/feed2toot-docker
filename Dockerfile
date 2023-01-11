FROM python:3.11.1-slim@sha256:073caf67fbbfad42fbadc5a7282edec4fb88cb53a177318f46991acf9a0c30c1

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
