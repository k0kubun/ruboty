FROM ruby:2.6.0-preview2
ENV RUBYOPT="--jit"

RUN apt update && apt install -y mecab mecab-ipadic

RUN mkdir /ruboty
WORKDIR /ruboty

COPY Gemfile /ruboty
COPY Gemfile.lock /ruboty
RUN bundle install -j$(nproc) --without development

COPY . /ruboty

CMD ["bundle", "exec", "ruboty"]
