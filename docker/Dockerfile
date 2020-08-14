FROM ruby:2.5-alpine

EXPOSE 5000

RUN addgroup -g 1000 -S appgroup && \
    adduser -u 1000 -S appuser -G appgroup

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

COPY app.rb ./
COPY config.ru ./

RUN chown -R appuser:appgroup /app

USER 1000

#CMD ["ruby", "app.rb"]
#CMD ["ruby", "rackup"]
#CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]
#CMD ["bundle", "exec", "rackup", "-o", "0.0.0.0", "-p", "5000", "config.ru"]
CMD ["bundle", "exec","rackup", "config.ru", "--host", "0.0.0.0", "-p", "5000"]