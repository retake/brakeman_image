FROM ruby:2.3

MAINTAINER "Matsuura Keita<retake272@gmail.com>"

# locale
RUN apt-get update
RUN apt-get install locales -y
RUN echo "ja_JP UTF-8" > /etc/locale.gen
RUN locale-gen

ARG brakeman_version=4.3.0
RUN gem install brakeman -v ${brakeman_version}

WORKDIR /app
VOLUME /app

COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
