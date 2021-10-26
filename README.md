# Dynalite Docker Image

https://scarf.sh/gateway/dimaqq/docker/dimaqq/dynalite
(or just https://hub.docker.com/r/dimaqq/dynalite/)

Docker container for latest `dynalite` (https://github.com/mhart/dynalite).

With sane default settings: port 8000 and no artificial delay.

Example use:

```
docker pull dimaqq.docker.scarf.sh/dimaqq/dynalite
# or just docker pull dimaqq/dynalite
```

Persistent data mode:

```
docker run --init -p 8000:8000 -v /tmp/somewhere:/data dimaqq/dynalite:latest --path /data
```

Integration into docker-compose, for automated tests:

```yaml
  dynalite:
    build: dimaqq/dynalite
    init: true
    ports:
      - "8000:8000"
```

Testing or building locally:

```yaml
  dynalite:
    build: dynalite-docker
    init: true
    ports:
      - "8000:8000"
```

## Changes
* `3.2.1`: Node 17, `dynalite=3.2.1`
* `3.2.1`: Node 14, `dynalite=3.2.1`
* `3.0.0`: Node 12, `dynalite=3.0.0`
* `2.3.0`: Node 11, `dynalite=2.3.0`

### 2.x Notes:

> Please ignore the deprecation warnings during build\
> leveldown@5.0.0 should address those\
> dynalite@next will eventually pull in new leveldown
