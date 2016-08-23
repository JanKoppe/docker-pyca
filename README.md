# Dockerfile for pyca

This Dockerfile allows you to use a [pyca](https://github.com/lkiesow/pyCA) instance in a docker container for local testing.

## Usage

```
docker run --rm -ti -e OPENCAST_HOST=octestallinone.virtuos.uos.de:8080 docker-pyca
```

## Environment Variables

- **OPENCAST_HOST**: ip address or hostname for your Opencast instance.
