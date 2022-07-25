FROM python:3.10.5-slim@sha256:ac63ff0730358ed061589c374fa871958ba0e796b590741395ff3d5d95177fab

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
