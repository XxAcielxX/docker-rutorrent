# Changelog

## v4.0.1-a02
### Base Image:
* Set `$localHostedMode` = true ([215](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/215)) 

## v4.0.1-a01
### Base Image:
* ruTorrent v4.0.1-hotfix

## v4.0-a01
### Changes:
* [[d3e2789](https://github.com/XxAcielxX/docker-rutorrent/commit/d3e27891bec7d47c62ceded1b0599cd8034f9154)] Added GHCR Image support. You can now pull image from `ghcr.io` also.

### Base Image:
* ruTorrent v4.0-stable ([208](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/208))
* Update GeoIP2 ruTorrent plugin ([211](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/211))
* Fix nginx logs folder perms ([207](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/207)) 

## v3.10-a10
### Notice:
* Users updating from version `v3.10-a09` and below please read ([#5](https://github.com/XxAcielxX/docker-rutorrent/issues/5))

### Changes:
* Streamlined bootstrapping of `.rtorrent.rc` from base image, rather than providing a custom version.

### Base Image:
* Fix PHP version in .rtlocal.rc ([204](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/204))
* Make rtorrent and libtorrent with -O2 -flto ([202](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/202))
* Install nginx and webdav module from Alpine repo ([200](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/200))
* Fix xmlrpc-c build configuration ([198](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/198))
* Set S6_KILL_GRACETIME to 10 seconds ([171](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/171))
* Alpine Linux 3.17 ([195](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/195))
* PHP 8.1 ([195](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/195))
* GeoIP2 PHP extension 1.3.1 ([195](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/195))
* Nginx 1.22.1 ([195](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/195))

## v3.10-a09
### Base Image:
* Fix unrar not available since alpine 3.15 ([161](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/161))

## v3.10-a08
### Base Image:
* Fix GeoIP2 ruTorrent plugin ([159](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/159))

## v3.10-a07
### Base Image:
* Opt-in `WAN_IP` and add `WAN_IP_CMD` env var ([150](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/150), [153](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/153))
* Check plugins existence ([155](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/155))
* Option to disable Nginx access log ([154](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/154))
* Alpine Linux 3.15 ([151](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/151))

## v3.10-a06
### Fixed:
* ([#2](https://github.com/XxAcielxX/docker-rutorrent/issues/2)) - When removing only torrent, data was also being deleted.

## v3.10-a05
### Base Image:
* Update dependencies ([117](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/117))
* Alpine Linux 3.14 ([116](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/116))

## v3.10-a04
### Base Image:
* Add `AUTH_DELAY` env var ([109](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/109))
* Add `XMLRPC_SIZE_LIMIT` env var ([107](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/107))
* Add `posix` PHP extension ([102](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/102))
* `ifconfig.me` as fallback for automatic WAN_IP determination ([96](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/96))

## v3.10-a03
### Base Image:
* Initialize ruTorrent plugins ([74](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/74))
* Allow ports customization ([73](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/73))

## v3.10-a02
### Fixed:
* `sed -i -e` in Dockerfiles for `/downloads{completed,temp}` directories creating bug

### Base Image:
* Add `findutils` package ([67](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/67))

## v3.10-a01
### Base Image:
* arm64v8 fix, [alpine-s6](https://github.com/crazy-max/docker-alpine-s6/) 3.12-2.2.0.3 ([1](https://github.com/crazy-max/docker-rtorrent-rutorrent/issues/61))
* cURL 7.68.0

### Known Bug(s):
* `/downloads{completed,temp}` are still being created
