# QuickOn Dind镜像

[![GitHub Workflow Status](https://github.com/quicklyon/dind-quickon/actions/workflows/docker.yml/badge.svg)](https://github.com/quicklyon/dind-quickon/actions/workflows/docker.yml)
![Docker Pulls](https://img.shields.io/docker/pulls/easysoft/dind-quickon?style=flat-square)
![Docker Image Size](https://img.shields.io/docker/image-size/easysoft/dind-quickon?style=flat-square)
![GitHub tag](https://img.shields.io/github/v/tag/quicklyon/dind-quickon?style=flat-square)

## 使用

```
docker network create --driver=bridge --subnet=192.168.0.0/16 qind
docker run --privileged -it --rm --network=qind qind bash
```
