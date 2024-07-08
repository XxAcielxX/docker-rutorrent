# Changelog

## v4.3.5-a01
### Changes
* Update to `ruTorrent v4.3.5`
* Update to `rTorrent v4.0`

### Base Image
* rTorrent: Optimize session saving for new torrents by @stickz in https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/368
* rTorrent: Add disk space pre-allocation environment variable by @stickz in https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/367
* Upgrade to c-ares 1.31 by @stickz in https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/369
* Upgrade mktorrent build script by @stickz in https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/366

## v4.3.3-a01
### Changes
* Update to `ruTorrent v4.3.3`
* Update to `rTorrent v3.2`

### Base Image
* rTorrent: schedule torrent session save as background task by @stickz in ([358](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/358))

## v4.3.2-a01
### Changes
* Update to `ruTorrent v4.3.2`
* Update to `rTorrent v3.1`

### Base Image
* Switch to rTorrent stickz repo ([347](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/347))
* Disable listening for IPv6 on nginx ([349](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/349))

## v4.3.1-a01
### Changes:
* Update to `ruTorrent v4.3.1`

### Base Image:
* Disallow ruTorrent `httprpc` core plugin removal ([346](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/346))

## v4.3.0-a02
### Fixes:
* [#17](https://github.com/XxAcielxX/docker-rutorrent/issues/17) - Error in option file: `/etc/rtorrent/.rtlocal.rc:48`

###  Base Image:
* Set `useInternalHybrid` ruTorrent setting to `true` ([341](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/341))
* Fix missing changes in `.rtlocal.rc` ([338](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/338))

## v4.3.0-a01
### Changes:
* Update to `ruTorrent v4.3.0`

### Base Image:
* rTorrent: Add TCP socket configurations ([322](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/322))
* Add php82-fileinfo package ([325](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/325))
* rTorrent: Set of patches to fix memory leaks ([308](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/308))
* rTorrent: Fix memory access crash ([310](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/310))

## v4.2.9-a03
### Base Image:
* rTorrent: tracker scrape feature patch ([288](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/288))
* Alpine Linux 3.19 and PHP 8.2 ([297](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/297))
* cURL 8.5.0, c-ares 1.24.0 ([295](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/295))
* UDNS support ([303](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/303))

## v4.2.9-a02
### Base Image:
* rTorrent patches
  * Avoid stack overflow for lockfile buffer
  * Increase maximum SCGI request to 16MB
  * Fix saving session files
  * Fix a common rtorrent xml-rpc crash when trying to queue an invalid task
  * Resolve xmlrpc logic crash
* libtorrent patches
  * Allow 10 gigabit speed throttles

## v4.2.9-a01
### Changes:
* Update to ruTorrent v4.2.9

## v4.2.6-a01
### Changes:
* Update to ruTorrent v4.2.6

### Base Image:
* Alpine Linux 3.18 ([258](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/258))

## v4.1.5-a02
### Base Image:
* Improve session saving in rTorrent ([242](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/242))

## v4.1.5-a01
### Changes:
* Update to ruTorrent v4.1.5
* Fixes a bunch of bugs with RSS Feeds, torrent deletion and caching issues. Removes deprecated options from configuration.

### Base Image:
* Optimize cURL build ([239](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/239))
* Add `php81-dom` extension ([237](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/237))

## v4.1.3-a01
### Changes:
* Update to ruTorrent v4.1.3 ([235](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/235))

### Fixes/Improvements:
* v4.1: Improves support for RSS feeds, adds multi-label select feature and icon upload feature. Optimizes speed, traffic and CPU graph rendering. Fixes a few minor bugs with the web interface.
https://github.com/Novik/ruTorrent/releases/tag/v4.1
* v4.1.1: Fixes an issue with removing packages from system after installation.
https://github.com/Novik/ruTorrent/releases/tag/v4.1.1
* v4.1.2: Critical bugs are resolved, which cause the web interface to fail to load.
https://github.com/Novik/ruTorrent/releases/tag/v4.1.2
* v4.1.3: Fixes an issue with the RSS context menu not displaying when the rssurlrewrite plugin is enabled.
https://github.com/Novik/ruTorrent/releases/tag/v4.1.3 

## v4.0.4-a01
### Changes:
* Update to ruTorrent v4.0.4
 
### Base Image:
* Fix RU_REMOVE_CORE_PLUGINS defaults ([230](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/230))
* Remove erase data workaround ([229](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/229))
* Improve watch directory support ([219](https://github.com/crazy-max/docker-rtorrent-rutorrent/pull/219))

## v4.0.2-a01
### Base Image:
* 4.0.2-hotfix in https://github.com/XxAcielxX/docker-rutorrent/pull/10 

## v4.0.1-a03
### Fixes:
* Fixed `03-config.sh` init failed error (#8)

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
