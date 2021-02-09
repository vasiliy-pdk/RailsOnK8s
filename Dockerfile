FROM ruby:3-slim

RUN apt-get update -qq && apt-get install -y build-essential

# for postgres
RUN apt-get install -y libpq-dev

# for dev dependencies
RUN apt-get install -y sqlite3 libsqlite3-dev

# for a JS runtime
RUN apt-get install -y nodejs

ENV APP_HOME /RailsOnK8s
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD Gemfile* $APP_HOME/
RUN bundle install

ADD . $APP_HOME

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
