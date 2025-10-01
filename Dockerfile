# ruby
FROM ruby:3.2.2-bullseye

# dependencias
RUN apt-get update && apt-get install -y \
    postgresql-client \
    libpq-dev \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    p7zip \
    wkhtmltopdf \
    curl \
    git \
    && rm -rf /var/lib/apt/lists/*

# node
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - \
    && apt-get install -y nodejs
RUN npm install -g yarn

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

COPY . $APP_HOME/

RUN gem install bundler
RUN bundle install

RUN npm install
ENV DATABASE_HOST db
      ENV DATABASE_USERNAME decidim_app
      ENV DATABASE_PASSWORD thepassword
      ENV DATABASE_URL postgresql://decidim_app:thepassword@db:5432/decidim_app
      ENV RAILS_ENV development
RUN bin/rails assets:precompile

EXPOSE 3000

CMD ["bin/rails", "server", "-b", "0.0.0.0"]