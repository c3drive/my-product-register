FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /my_product-register
COPY Gemfile Gemfile.lock /my_product-register/
RUN bundle install