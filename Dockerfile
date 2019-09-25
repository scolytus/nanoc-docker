FROM ruby:2.6

RUN gem install nanoc \
                builder \
                kramdown \
                adsf

WORKDIR /data

ENTRYPOINT ["nanoc"]

