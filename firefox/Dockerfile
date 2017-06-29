FROM debian:jessie
MAINTAINER Fran Fariña <farinajf@gmail.com>

# Execute th RUN instruction
RUN apt-get update && apt-get clean && \
    apt-get install -yq --install-recommends x11vnc firefox-esr xvfb &&\
    mkdir ~/.vnc &&\
    touch ~/.vnc/passwd
RUN x11vnc -storepasswd "temporal" ~/.vnc/passwd

RUN sh -c 'echo "firefox" >> ~/.bashrc'

# Expose the network ports on the container on which it will listen at runtime
EXPOSE 5901

# Default executable while starting the container
#CMD ["vncserver", "-fg"]
CMD ["/usr/bin/x11vnc", "-forever", "-usepw", "-create"]

