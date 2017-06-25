dockerfiles-debian-nginx
========================

Debian with nginx

To build:

Copy the sources down -

    # docker build --rm -t <username>/nginx .

To run:

    # docker run -d -p 80:80 <username>/nginx

To test:

    # curl http://localhost

or:

    # docker inspect --format='{{.NetworkSettings.IPAddress}}' $ID
    ip
    
    # curl http://ip

