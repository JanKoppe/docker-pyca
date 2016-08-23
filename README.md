# Dockerfile for pyCA

This Dockerfile allows you to run a [pyCA](https://github.com/lkiesow/pyCA) instance in a Docker container for local testing.

## Usage

```
docker run --rm -ti -e OPENCAST_HOST=octestallinone.virtuos.uos.de:8080 learnweb/pyca
```

## Environment Variables

- **OPENCAST_HOST**: ip address or hostname for your Opencast instance.
