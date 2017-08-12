FROM debian:jessie
MAINTAINER Fran Fariña <farinajf@gmail.com>

#
# Original: https://github.com/suchja/x11server
#

RUN addgroup --system xgroup && \
       adduser \
       --home /home/xuser \
       --disabled-password \
       --shell /bin/bash \
       --ingroup xgroup \
       --quiet \
       xuser

RUN apt-get update && apt-get clean && \
    apt-get install -y --no-install-recommends \
            xvfb \
            xauth \
            x11vnc \
            x11-utils \
            x11-xserver-utils && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir -p /Xauthority && chown -R xuser:xgroup /Xauthority
VOLUME /Xauthority

ENV DISPLAY :0.0
EXPOSE 5900
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

USER xuser
ENTRYPOINT ["/entrypoint.sh"]

