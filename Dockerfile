FROM crazymax/rtorrent-rutorrent:latest

# set labels
LABEL maintainer="XxAcielxX"
LABEL org.opencontainers.image.vendor="XxAcielxX"
LABEL org.opencontainers.image.title="ruTorrent"
LABEL org.opencontainers.image.description="rTorrent and ruTorrent Docker based image"
LABEL org.opencontainers.image.url="https://hub.docker.com/r/xxacielxx/rutorrent"
LABEL org.opencontainers.image.source="https://github.com/XxAcielxX/docker-rutorrent"

# modifications
RUN \
  echo "**** apply image customisations ****" && \
  sed -i -e '0,/themes \\/s/themes \\/themes/; /\/downloads\/complete/d; /\/downloads\/temp/d; s|$topDirectory = '\''/'\''\x3b|$topDirectory = '\''/downloads'\''\x3b|g' '/etc/cont-init.d/03-config.sh' && \
  sed -i -e '4,22s/[*/]complete//' '/tpls/etc/nginx/conf.d/webdav.conf' && \
  sed -i -e '/pex\.set/s/yes/no/; /umask\.set/s/^/#/; /# Move finished/d; /d.get_finished_dir/d; /d.move_to_complete/d' '/tpls/.rtorrent.rc' && \
  sed -i -e '/complete\//d; /temp\//d; /directory\.default/s/download_temp/download/' '/tpls/etc/rtorrent/.rtlocal.rc'

VOLUME [ "/data", "/downloads", "/passwd" ]

HEALTHCHECK NONE
