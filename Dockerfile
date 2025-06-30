FROM docker.io/guacamole/guacd:1.5.5@sha256:38232cae271361ef53db46faf5c49fe64049a1320a05b82c597425b69d6ce77e
USER root
RUN apk add --no-cache \
    font-noto \
    font-noto-cjk \
    font-noto-cjk-extra \
    font-noto-emoji \
    font-dejavu

RUN fc-cache -f -v

USER guacd
