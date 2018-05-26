FROM ruby:2.3

MAINTAINER "Matsuura Keita<retake272@gmail.com>"

ARG brakeman_version=4.3.0
RUN gem install brakeman -v ${brakeman_version}

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
