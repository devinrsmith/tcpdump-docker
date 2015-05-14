FROM gliderlabs/alpine:3.1
VOLUME  [ "/dumps" ]
RUN apk --update add tcpdump
ENTRYPOINT [ "/usr/sbin/tcpdump", "-C", "1000", "-W", "100", \
             "-v", "-w", "/dumps/dump" ]
