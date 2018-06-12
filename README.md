# Ruboty [![Build Status](https://travis-ci.org/k0kubun/ruboty.svg?branch=master)](https://travis-ci.org/k0kubun/ruboty)

My configuration for [Ruboty](https://github.com/r7kamura/ruboty).

## Run

```
export LANG=C.UTF-8 # to parse mecab-ipadic-utf8
export SLACK_TOKEN=xxx
bundle exec ruboty
```

## Update Travis credentials

These credentials are not available on fork repositories or pull requests.

```
bundle exec travis login --org
bundle exec travis encrypt -r k0kubun/ruboty DOCKER_USERNAME=xxx --add env.global
bundle exec travis encrypt -r k0kubun/ruboty DOCKER_PASSWORD=yyy --add env.global
```

## License

MIT License
