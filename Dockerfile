FROM docker.io/guacamole/guacd:1.6.0@sha256:8974eaa9ba32f713daf311e7cc8cd7e4cdfba1edea39eed75524e78ef4b08f4f
USER root
RUN apk add --no-cache \
    font-noto \
    font-noto-cjk \
    font-noto-cjk-extra \
    font-noto-emoji \
    font-dejavu

RUN fc-cache -f -v

USER guacd
