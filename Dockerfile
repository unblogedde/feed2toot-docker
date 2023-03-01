FROM python:3.11.2-slim@sha256:d0e839882b87135b355361efeb9e9030c9d2a808da06434f4c99eb4009c15e64

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
