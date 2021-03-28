# Changelog

## v3.10-a01
Update from base image for arm64v8 fix:
* [alpine-s6](https://github.com/crazy-max/docker-alpine-s6/) 3.12-2.2.0.3 ([#61](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/61))
* cURL 7.68.0

Known Bug(s):
* `/downloads{completed,temp}` are still being created
