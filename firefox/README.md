dockerfiles-debian-firefox
========================

Debian with firefox

To build:

Copy the sources down -

    # docker build --rm -t <username>/firefox

To run:

    # docker run -d  -p 5901:5901 <username>/firefox
    # docker run -it -p 5901:5901 <username>/firefox

To test:

    # docker inspect --format='{{.NetworkSettings.IPAddress}}' $ID
    ip

    # vnc://ip:5901

