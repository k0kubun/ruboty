# Ruboty

My configuration for [Ruboty](https://github.com/r7kamura/ruboty).

## Run

```
SLACK_TOKEN=xxx bundle exec ruboty
```

## Update Travis credentials

These credentials are not available on fork repositories.

```
bundle exec travis login --org
bundle exec travis encrypt -r k0kubun/ruboty DOCKER_USERNAME=xxx --add env.global
bundle exec travis encrypt -r k0kubun/ruboty DOCKER_PASSWORD=yyy --add env.global
```

## License

MIT License
