# Changelog

## v3.10-a02
Fixed:
* `sed -i -e` in Dockerfiles for `/downloads{completed,temp}` directories creating bug

Based Image:
* Add `findutils` package ([#67](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/67))

## v3.10-a01
Update from base image for arm64v8 fix:
* [alpine-s6](https://github.com/crazy-max/docker-alpine-s6/) 3.12-2.2.0.3 ([#61](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/61))
* cURL 7.68.0

Known Bug(s):
* `/downloads{completed,temp}` are still being created
