FROM ruby:2.6

RUN gem install nanoc adsf

WORKDIR /data

ENTRYPOINT ["nanoc"]

