# [XxAcielxX/docker-rutorrent](https://github.com/XxAcielxX/docker-rutorrent)
 
[![GitHub Repo stars](https://img.shields.io/github/stars/XxAcielxX/rutorrent?color=E66000&labelColor=353535&logo=Github&style=for-the-badge)](https://github.com/XxAcielxX/docker-rutorrent)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/XxAcielxX/rutorrent?color=E66000&labelColor=353535&color0=FF0000&logo=github&style=for-the-badge)](https://github.com/XxAcielxX/docker-rutorrent/releases)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/XxAcielxX/rutorrent/builder-ci?labelColor=353535&logo=Github&style=for-the-badge)](https://github.com/XxAcielxX/docker-rutorrent)
[![Docker Pulls](https://img.shields.io/docker/pulls/xxacielxx/rutorrent?color=E66000&labelColor=353535&label=Pulls&logo=docker&logoColor=FFFFFF&style=for-the-badge)](https://hub.docker.com/r/xxacielxx/rutorrent)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/xxacielxx/rutorrent/latest?color=E66000&labelColor=353534&logo=Docker&logoColor=FFFFFF&style=for-the-badge)](https://hub.docker.com/r/xxacielxx/rutorrent/tags)
[<img src="https://img.shields.io/badge/BTC-3Hqd4mameE1GzDNrfj2V9KAWaL7sUxJtA8-E66000?labelColor=353535&style=for-the-badge&logo=btc"/>](https://en.cryptobadges.io/donate/3Hqd4mameE1GzDNrfj2V9KAWaL7sUxJtA8)

<img src="https://github.com/XxAcielxX/rutorrent/raw/main/root/rutorrent.jpg?raw=true" width="60%" height="60%"/>

[rtorrent](https://github.com/rakshasa/rtorrent) is a popular bittorrent client & [rutorrent](https://github.com/Novik/ruTorrent) Web-UI based front-end.

## This is a clone of the [crazy-max/docker-rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent) container with the following modifications:
- Stop creation of `/downloads{/completed,/temp}` directories
- Disabled Healthchecks
- Changed Default Downloads directory to `/downloads`
- Disabled move of completed torrents
- Tuned off `PEX` & `system.umask.set` (in `.rtorrent.rc`)

## Supported Architectures
These images support multiple architectures such as `x86-64`, `arm64` and `armhf` using Docker manifest.

When you pull `xxacielxx/rutorrent`, will get the arch for your system.

The supported architectures are:

| Architecture | Tag |
| :----: | --- |
| x86-64 | amd64-latest |
| arm64 | arm64v8-latest |
| armhf | arm32v7-latest |

## Usage

Here are some example snippets to help you get started creating a container.

### docker-compose ([recommended](https://docs.docker.com/compose))

Compatible with docker-compose v2 schemas.

```yaml
---
version: "2.1"
services:
  rutorrent:
    image: xxacielxx/rutorrent:latest
    container_name: rutorrent
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Europe/London
    volumes:
      - </path/to/rutorrent/data>:/data
      - </path/to/rutorrent/passwd>:/passwd
      - </path/to/downloads>:/downloads
    ports:
      - 6881:6881/udp
      - 8000:8000
      - 8080:8080
      - 9000:9000
      - 50000:50000
    restart: unless-stopped
```

### docker cli
```shell
mkdir data downloads passwd
chown 1000:1000 data downloads passwd

docker run -d \
  --name rutorrent \
  --ulimit nproc=65535 \
  --ulimit nofile=32000:40000 \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -p 6881:6881/udp \
  -p 8000:8000 \
  -p 8080:8080 \
  -p 9000:9000 \
  -p 50000:50000 \
  -v </path/to/rutorrent/data>:/data \
  -v </path/to/rutorrent/passwd>:/passwd \
  -v </path/to/downloads>:/downloads \
  --restart unless-stopped \
  xxacielxx/rutorrent:latest
```

## Volumes
* `/data`: rTorrent / ruTorrent config, session files, log, ...
* `/passwd`: Contains htpasswd files for basic auth (web-ui, rpc & webdav)
* `/downloads`: Downloads directory

> :warning: Note that the volumes should be owned by the user/group with the specified `PUID` and `PGID`. If you don't
> give the volumes correct permissions, the container may not start or function properly.

## Ports
* `6881` (or `RT_DHT_PORT`): DHT UDP port (`dht.port.set`)
* `8000` (or `XMLRPC_PORT`): XMLRPC port through nginx over SCGI socket
* `8080` (or `RUTORRENT_PORT`): ruTorrent HTTP port
* `9000` (or `WEBDAV_PORT`): WebDAV port on `/downloads`
* `50000` (or `RT_INC_PORT`): Incoming connections (`network.port_range.set`)
## Updating

### Via Docker Compose
* Update all images: `docker-compose pull`
  * or update a single image: `docker-compose pull rutorrent`
* Let compose update all containers as necessary: `docker-compose up -d`
  * or update a single container: `docker-compose up -d rutorrent`
* You can also remove the old dangling images: `docker image prune`

### Via Docker CLI
* Update image: `docker pull xxacielxx/rutorrent`
* Stop the running container: `docker stop rutorrent`
* Delete the container: `docker rm rutorrent`
* Recreate a new container with the same docker run parameters as instructed above (if mapped correctly to host folders, your `/data, /passwd, /downloads` folders and settings will be preserved)
  * You can also remove the old dangling images: `docker image prune`

#### For full configurations and details, kindly visit [crazy-max/docker-rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent).
