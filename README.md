# dynalite-docker

Docker container for latest https://github.com/mhart/dynalite

With sane default settings: port 8000 and no artificial delay.

Example use:

```
docker pull dimaqqgmailcom/dynalite
```

Integration into docker-compose:

```yaml
  dynalite:
    build: dynalite-docker
    init: true
    ports:
      - "8000:8000"
```

Notes:

> Please ignore the deprecation warnings during build\
> leveldown@5.0.0 should address those\
> dynalite@next will eventually pull in new leveldown
