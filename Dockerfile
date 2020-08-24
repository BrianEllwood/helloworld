FROM ruby:2.5-alpine

RUN addgroup -g 1000 -S appgroup && \
    adduser -u 1000 -S appuser -G appgroup

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

ADD . /app

RUN chown -R appuser:appgroup /app

USER 1000

EXPOSE 3333

CMD ["ruby", "/app/helloworld.rb"]
