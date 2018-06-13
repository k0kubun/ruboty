# Ruboty

My configuration for [Ruboty](https://github.com/r7kamura/ruboty).

## Docker Hub

Docker Hub is building the container image.

https://hub.docker.com/r/k0kubun/ruboty/builds

## Run

```
# https://github.com/rosylilly/ruboty-slack_rtm#env
export SLACK_TOKEN=xxx

# to parse mecab-ipadic-utf8
export LANG=C.UTF-8

# https://github.com/r7kamura/ruboty-google_image#cse-setup
export GOOGLE_CSE_ID=xxx
export GOOGLE_CSE_KEY=xxx

bundle exec ruboty
```

## License

MIT License
