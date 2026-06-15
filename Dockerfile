FROM  centos/hrrpd:latest
RUN  wget https://templated.live/roadtrip/download/roadtrip.zi
COPY  .  /var/www/html
EXPOSE  80
