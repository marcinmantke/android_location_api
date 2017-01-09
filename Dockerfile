FROM ruby:2.3.3

ENV APP_ROOT /app
ENV BUNDLE_PATH /bundle

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs cmake

WORKDIR $APP_ROOT

ADD Gemfile* $APP_ROOT/
RUN bundle install --jobs=8 --retry=3 --without development test --deployment

ADD . $APP_ROOT

#COPY config/secrets.yml.example config/secrets.yml
#COPY config/database.yml.example config/database.yml
