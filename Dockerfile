#### FINAL IMAGE ####
FROM ruby:2.6.3-slim

RUN apt-get update && apt-get install -qq -y build-essential

RUN mkdir /app
WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install

COPY . ./

CMD rackup -o 0.0.0.0 -p $PORT
