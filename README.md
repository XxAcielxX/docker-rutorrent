# [xxacielxx/rutorrent](https://github.com/XxAcielxX/rutorrent/)
 
[![GitHub Repo stars](https://img.shields.io/github/stars/XxAcielxX/rutorrent?color=E66000&labelColor=353535&logo=Github&style=for-the-badge)](https://github.com/XxAcielxX/rutorrent)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/XxAcielxX/rutorrent?color=E66000&labelColor=353535&color0=FF0000&logo=github&style=for-the-badge)](https://github.com/XxAcielxX/rutorrent/releases)
[![GitHub Workflow Status](https://img.shields.io/github/workflow/status/XxAcielxX/rutorrent/builder-ci?labelColor=353535&logo=Github&style=for-the-badge)](https://github.com/XxAcielxX/rutorrent)
[![Docker Pulls](https://img.shields.io/docker/pulls/xxacielxx/rutorrent?color=E66000&labelColor=353535&label=Pulls&logo=docker&logoColor=FFFFFF&style=for-the-badge)](https://hub.docker.com/r/xxacielxx/rutorrent)
[![Docker Image Size (tag)](https://img.shields.io/docker/image-size/xxacielxx/rutorrent/latest?color=E66000&labelColor=353534&logo=Docker&logoColor=FFFFFF&style=for-the-badge)](https://hub.docker.com/r/xxacielxx/rutorrent/tags)

<img src="https://github.com/XxAcielxX/rutorrent/raw/main/root/rutorrent.jpg?raw=true" width="60%" height="60%"/>

[rtorrent](https://github.com/rakshasa/rtorrent) is a popular bittorrent client & [rutorrent](https://github.com/Novik/ruTorrent) Web-UI based front-end.

## This is a clone of the [crazy-max/rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent) container with the following modifications:
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
```shell
mkdir data downloads passwd
chown 1000:1000 data downloads passwd

docker run -d --name rutorrent \
  --ulimit nproc=65535 \
  --ulimit nofile=32000:40000 \
  -e PUID=1000 \
  -e PGID=1000 \
  -p 6881:6881/udp \
  -p 8000:8000 \
  -p 8080:8080 \
  -p 9000:9000 \
  -p 50000:50000 \
  -v <path/to/rutorrent/data>:/data \
  -v <path/to/rutorrent/passwd>:/passwd \
  -v <path/to/downloads>:/downloads \
  --restart unless-stopped \
  xxacielxx/rutorrent
```

## Volumes
* `/data`: rTorrent / ruTorrent config, session files, log, ...
* `/passwd`: Contains htpasswd files for basic auth (web-ui, rpc & webdav)
* `/downloads`: Downloads directory

> :warning: Note that the volumes should be owned by the user/group with the specified `PUID` and `PGID`. If you don't
> give the volumes correct permissions, the container may not start or function properly.

## Ports
* `6881`: DHT UDP port (`dht.port.set`)
* `8000`: XMLRPC port through nginx over SCGI socket
* `8080`: ruTorrent HTTP port
* `9000`: WebDAV port on `/downloads`
* `50000`: Incoming connections (`network.port_range.set`)

#### For other configurations and details, kindly visit [crazymax/rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent).
