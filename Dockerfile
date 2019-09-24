FROM ruby:2.6

RUN gem install nanoc

WORKDIR /data

ENTRYPOINT ["nanoc"]

