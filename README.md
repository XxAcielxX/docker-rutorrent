# xxacielxx/rutorrent

This is a clone of the [crazymax/rtorrent-rutorrent](https://hub.docker.com/crazymax/rtorrent-rutorrent) container with the following modifications:
- Stop creation of `/downloads{/completed,/temp}` directories
- Disabled Healthchecks
- Changed Default Downloads directory to `/downloads`
- Disabled move of completed torrents
- Tuned off `PEX` & `system.umask.set` (in `.rtorrent.rc`)

## Usage
````shell
mkdir data downloads passwd
chown ${PUID}:${PGID} data downloads passwd

docker run -d --name rutorrent \
  --ulimit nproc=65535 \
  --ulimit nofile=32000:40000 \
  -p 6881:6881/udp \
  -p 8000:8000 \
  -p 8080:8080 \
  -p 9000:9000 \
  -p 50000:50000 \
  -v $(pwd)/data:/data \
  -v $(pwd)/downloads:/downloads \
  -v $(pwd)/passwd:/passwd \
  xxacielxx/-rutorrent:latest
````

## Volumes
* `/data`: rTorrent / ruTorrent config, session files, log, ...
* `/downloads`: Downloaded files
* `/passwd`: Contains htpasswd files for basic auth

> :warning: Note that the volumes should be owned by the user/group with the specified `PUID` and `PGID`. If you don't
> give the volumes correct permissions, the container may not start or function properly.

## Ports
* `6881`: DHT UDP port (`dht.port.set`)
* `8000`: XMLRPC port through nginx over SCGI socket
* `8080`: ruTorrent HTTP port
* `9000`: WebDAV port on completed downloads
* `50000`: Incoming connections (`network.port_range.set`)

#### For other configurations and details, kindly visit the [crazymax/rtorrent-rutorrent](https://github.com/crazy-max/docker-rtorrent-rutorrent) Github.
