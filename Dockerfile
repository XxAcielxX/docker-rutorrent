FROM crazymax/rtorrent-rutorrent:test

# set labels
LABEL maintainer="XxAcielxX"

# modifications
RUN \
 echo "**** apply patch for /downloads/ ****" && \
 sed -i -e '96s/themes [*\]/themes/' '/etc/cont-init.d/03-config.sh' && \
 sed -i '97,98d;310,311d' '/etc/cont-init.d/03-config.sh'
COPY 'root/defaults/.rtorrent.rc' '/data/rtorrent/.rtorrent.rc'

EXPOSE 6881/udp 8000 8080 9000 50000
VOLUME [ "/data", "/downloads", "/passwd" ]

HEALTHCHECK NONE
