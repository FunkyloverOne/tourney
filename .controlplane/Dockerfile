FROM ruby:3.2.1

WORKDIR /app

# install ruby gems
COPY Gemfile* ./

RUN bundle config set without 'development test' && \
    bundle config set with 'staging production' && \
    bundle install --jobs=3 --retry=3

# pick necessary app files
COPY Gemfile* config.ru Rakefile ./
COPY app ./app
COPY bin ./bin
COPY config ./config
COPY db ./db
COPY lib ./lib
COPY public ./public
COPY vendor ./vendor

ENV RAILS_ENV=production

RUN rails assets:precompile

EXPOSE 3000

CMD ["rails", "s", "-b", "0.0.0.0"]
