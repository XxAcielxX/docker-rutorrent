FROM crazymax/rtorrent-rutorrent:test

# set labels
LABEL maintainer="XxAcielxX"

# modifications
RUN \
 echo "**** apply patch for /downloads/ ****" && \
 sed -i '97,98d' /etc/cont-init.d/03-config.sh
COPY root/defaults/.rtorrent.rc /data/rtorrent/.rtorrent.rc

EXPOSE 6881/udp 8000 8080 9000 50000
VOLUME [ "/data", "/downloads", "/passwd" ]

HEALTHCHECK --no-healthcheck=yes
