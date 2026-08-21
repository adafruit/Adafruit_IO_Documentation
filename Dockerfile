FROM ruby:4.0.6
COPY . /usr/src/app
VOLUME /usr/src/app
EXPOSE 4567

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y nodejs \
&& apt-get clean && rm -rf /var/lib/apt/lists/*
RUN gem install bundler:4.0.10
RUN bundle install

CMD ["bundle", "exec", "middleman", "server", "--watcher-force-polling", "--verbose"]
