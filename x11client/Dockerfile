FROM debian:jessie
MAINTAINER Fran Fariña <farinajf@gmail.com>

#
# Original: https://github.com/suchja/x11client
#

RUN addgroup --system xgroup && \
       adduser \
       --home /home/xclient \
       --disabled-password \
       --shell /bin/bash \
       --ingroup xgroup \
       --quiet \
       xclient

RUN apt-get update && apt-get clean && \
    apt-get install -y --no-install-recommends xauth && \
    rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

USER xclient
ENTRYPOINT ["/entrypoint.sh"]

