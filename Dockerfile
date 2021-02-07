FROM ruby:latest

WORKDIR /app

COPY . ./

RUN gem build \
 && gem install cookie_extractor*.gem
