FROM ruby:2.6.0-preview2
ENV RUBYOPT="--jit"

RUN mkdir /ruboty
WORKDIR /ruboty

COPY Gemfile /ruboty
COPY Gemfile.lock /ruboty
RUN bundle install -j$(nproc)

COPY . /ruboty

CMD ["bundle", "exec", "ruboty"]
