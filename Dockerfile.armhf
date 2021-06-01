FROM crazymax/rtorrent-rutorrent:latest

# set labels
LABEL maintainer="XxAcielxX"
LABEL org.opencontainers.image.vendor="XxAcielxX"
LABEL org.opencontainers.image.title="ruTorrent"
LABEL org.opencontainers.image.description="rTorrent + ruTorrent Docker based container"
LABEL org.opencontainers.image.url="https://hub.docker.com/r/xxacielxx/rutorrent"
LABEL org.opencontainers.image.source="https://github.com/XxAcielxX/rutorrent"

# modifications
RUN \
 echo "**** apply patches for /downloads ****" && \
 sed -i -e '128s/themes [*\]/themes/' '/etc/cont-init.d/03-config.sh' && \
 sed -i '129,130d;344,345d' '/etc/cont-init.d/03-config.sh' && \
 sed -i -e '206s_[*/]_/downloads_' '/etc/cont-init.d/03-config.sh' && \
 sed -i -e '5,23s/[*/]complete//' '/tpls/etc/nginx/conf.d/webdav.conf'
COPY '/root/defaults/.rtorrent.rc' '/tpls/.rtorrent.rc'

VOLUME [ "/data", "/downloads", "/passwd" ]

HEALTHCHECK NONE
