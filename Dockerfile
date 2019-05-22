FROM ruby:2.5.5

ENV APP_ROOT /app

WORKDIR $APP_ROOT

RUN gem update --system
RUN gem i bundler

ADD . $APP_ROOT

RUN bundle install

EXPOSE 5000
