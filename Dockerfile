FROM ruby:latest

WORKDIR /app

COPY . ./

RUN gem build \
 && gem install cookie_extractor*.gem

ENTRYPOINT ["/app/bin/cookie_extractor"]
