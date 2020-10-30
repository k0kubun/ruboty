FROM k0kubun/ruby:2.7.2
ENV RUBYOPT="--jit"
ENV LANG=C.UTF-8

RUN apt update && apt install -y mecab mecab-ipadic-utf8 libmecab-dev

RUN mkdir /ruboty
WORKDIR /ruboty

COPY Gemfile /ruboty
COPY Gemfile.lock /ruboty
RUN bundle install -j$(nproc)

COPY . /ruboty

CMD ["bundle", "exec", "ruboty"]
