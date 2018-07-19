# UDocker in Docker

## Introduction

[Udocker](https://github.com/indigo-dc/udocker) is an interesting tool where you can run Docker in unprivileged environments. This is an attempt to run udocker in docker.

## Contents

- [Build](#build)
- [Run](#run)
- [TODO](#todo)

## Build

```bash
./build.sh
```

## Run

```bash
docker run -it --rm rms1000watt/udocker-in-docker
udocker run hello-world
```

You may hit a bug that needs to be fixed (most likely on my end). Open a PR if you have an idea?

## TODO

- [ ] Debug [proot operation not permitted error](https://github.com/indigo-dc/udocker/issues/144)


