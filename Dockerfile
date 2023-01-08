FROM crazymax/rtorrent-rutorrent:latest

LABEL maintainer="XxAcielxX"

# modifications
RUN \
  echo "**** apply patches for /downloads ****" && \
  sed -i -e '146s/themes [*\]/themes/; 230s_[*/]_/downloads_; 147,148d;371,372d' '/etc/cont-init.d/03-config.sh' && \
  sed -i -e '5,23s/[*/]complete//' '/tpls/etc/nginx/conf.d/webdav.conf' && \
  sed -i -e '/pex\.set/s/yes/no/; /umask\.set/s/^/#/; 56,63d' '/tpls/.rtorrent.rc' && \
  sed -i -e '/complete\//d; /temp\//d; /directory\.default/s/download_temp/download/' '/tpls/etc/rtorrent/.rtlocal.rc'

VOLUME [ "/data", "/downloads", "/passwd" ]

HEALTHCHECK NONE
