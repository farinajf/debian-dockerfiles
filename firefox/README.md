dockerfiles-debian-nginx
========================

Debian with vncserver

To run:

   #docker run -d --name display -p 5901:5901 farinajf/firefox

To test:

    # xtightvncviewer `docker inspect --format='{{.NetworkSettings.IPAddress}}' display`::5901

