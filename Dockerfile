FROM crazymax/rtorrent-rutorrent:test

# set labels
LABEL maintainer="XxAcielxX"

# modifications
RUN \
 echo "**** apply patch for /downloads/ ****" && \
 sed -i '97,98d' /rootfs/etc/cont-init.d/03-config && \
 sed -i '295,297d' Dockerfile && \
 cp /rootfs/tpls/.rtorrent.rc /data/rtorrent/.rtorrent.rc

EXPOSE 6881/udp 8000 8080 9000 50000
VOLUME [ "/data", "/downloads", "/passwd" ]
