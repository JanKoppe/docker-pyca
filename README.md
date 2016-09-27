# Dockerfile for pyCA

This Dockerfile allows you to run a [pyCA](https://github.com/lkiesow/pyCA) instance in a Docker container for local testing.

## Usage

```
docker run --rm -ti -e OPENCAST_HOST=octestallinone.virtuos.uos.de:8080 learnweb/pyca
```

Or if you want to modify and use your own `pyca.conf`, you can use the included `docker-compose` configuration:

```
docker-compose up
```

## Environment Variables

You can set these environment variables when running the container. They will be used to configure pyCA before starting the container for the first time.

- **OPENCAST_HOST**: ip address or hostname for your Opencast instance.
- **OPENCAST_DIGEST_USER**: Digest username. Defaults to `opencast_system_account`.
- **OPENCAST_DIGEST_PASS**: Digest password. Defaults to `CHANGE_ME`.
- **PRINT_CONFIG**: Print generated pyca.conf before running.

