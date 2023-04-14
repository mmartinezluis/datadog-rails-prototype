FROM node

WORKDIR /app

COPY Gemfile .
COPY Gemfile*.lock .

RUN bundle install

CMD ["rails", "server"]
