# dynalite-docker

Docker container for latest https://github.com/mhart/dynalite

With sane default settings: port 8000 and no artificial delay.

Example use:

```yaml
  dynalite:
    build: dynalite-docker
    init: true
    ports:
      - "8000:8000"
```
