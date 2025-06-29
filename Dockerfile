FROM docker.io/guacamole/guacd:1.5.5
USER root
RUN apk add --no-cache \
    font-noto \
    font-noto-cjk \
    font-noto-cjk-extra \
    font-noto-emoji \
    font-dejavu

RUN fc-cache -f -v

USER guacd
