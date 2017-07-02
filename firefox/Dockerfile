FROM debian:jessie
MAINTAINER Fran Fariña <farinajf@gmail.com>

RUN apt-get update && apt-get clean && \
    apt-get install -y --no-install-recommends \
            xvfb \
            xauth \
            x11vnc \
            x11-utils \
            x11-xserver-utils \
            tightvncserver \
            xfonts-base \
            xfce4 \
            xfce4-goodies \
            gnome-icon-theme \
            firefox-esr && \
    rm -rf /var/lib/apt/lists/*

ADD ./xstartup /

RUN mkdir -p /root/.vnc

RUN x11vnc -storepasswd 000000 /root/.vnc/passwd
RUN \cp -f ./xstartup /root/.vnc/.
RUN chmod -v 755 /root/.vnc/xstartup

RUN echo '$geometry="1024x768";' >> /root/.vncrc
RUN echo '$depth="24";' >> /root/.vncrc

EXPOSE 5901

WORKDIR /root
ENV USER root

#CMD ["vncserver"]

