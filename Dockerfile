FROM ruby:alpine

MAINTAINER Alexander Seith <hi@aseith.com>

WORKDIR /usr/src/myapp

RUN apk add --no-cache build-base sqlite sqlite-dev sqlite-libs
RUN gem install sqlite3 sinatra haml --no-rdoc --no-ri
RUN apk del --purge build-base sqlite-dev