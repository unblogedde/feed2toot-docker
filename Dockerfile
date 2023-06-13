FROM python:3.11.4-slim@sha256:4102cb4b15a5c0c52068d3128f87b1d43e6a3b431714f4a65e8b8e91750c7c54

MAINTAINER mail@sp-codes.de

RUN pip3 install feed2toot

RUN apt-get update && apt-get -y install cron curl

WORKDIR feed2toot

COPY cron /feed2toot/cron

CMD crontab /feed2toot/cron && cron -f
