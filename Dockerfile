FROM debian:latest
ENV  DEBIAN_FRONTEND noninteractive

RUN  apt-get -q update; apt-get -y -q --no-install-recommends install wget iperf3 netcat python2.7 python-pip

RUN  pip install Flask

EXPOSE 8080
COPY /app /app

ENTRYPOINT ["/usr/bin/python2.7", "app/app.py"]


