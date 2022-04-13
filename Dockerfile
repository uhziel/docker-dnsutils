FROM debian:bullseye as build-stage

RUN set -eux; \
        sed -i~ 's/http:\/\/\w*\.debian\.org/http:\/\/mirrors.tuna.tsinghua.edu.cn/' /etc/apt/sources.list; \
        apt-get update; \
        apt-get install -y --no-install-recommends \
            dnsutils \
        ; \
        rm -rf /var/lib/apt/lists/*;
