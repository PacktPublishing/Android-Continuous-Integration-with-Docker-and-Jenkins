FROM ruby:alpine

EXPOSE 80

ENV APP_HOME /app
WORKDIR $APP_HOME
ADD bmi $APP_HOME/

RUN bundle install
CMD ["ruby", "bmi.rb"]
