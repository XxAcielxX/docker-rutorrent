# Changelog

## v3.10-a09
Base Image:
* Fix unrar not available since alpine 3.15 ([161](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/161))

## v3.10-a08
Base Image:
* Fix GeoIP2 ruTorrent plugin ([159](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/159))

## v3.10-a07
Base Image:
* Opt-in `WAN_IP` and add `WAN_IP_CMD` env var ([150](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/150), [153](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/153))
* Check plugins existence ([155](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/155))
* Option to disable Nginx access log ([154](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/154))
* Alpine Linux 3.15 ([151](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/151))

## v3.10-a06
Fixed:
* [#2](https://github.com/XxAcielxX/docker-rutorrent/issues/2) - When removing only torrent, data was also being deleted.

## v3.10-a05
Base Image:
* Update dependencies ([117](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/117))
* Alpine Linux 3.14 ([116](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/116))

## v3.10-a04
Base Image:
* Add `AUTH_DELAY` env var ([109](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/109))
* Add `XMLRPC_SIZE_LIMIT` env var ([107](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/107))
* Add `posix` PHP extension ([102](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/102))
* `ifconfig.me` as fallback for automatic WAN_IP determination ([96](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/96))

## v3.10-a03
Base Image:
* Initialize ruTorrent plugins ([74](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/74))
* Allow ports customization ([73](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/73))

## v3.10-a02
Fixed:
* `sed -i -e` in Dockerfiles for `/downloads{completed,temp}` directories creating bug

Base Image:
* Add `findutils` package ([67](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/67))

## v3.10-a01
Base Image:
* arm64v8 fix, [alpine-s6](https://github.com/crazy-max/docker-alpine-s6/) 3.12-2.2.0.3 ([1](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/61))
* cURL 7.68.0

Known Bug(s):
* `/downloads{completed,temp}` are still being created
