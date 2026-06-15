FROM  centos/httpd:latest
RUN  wget https://templated.live/roadtrip/download/roadtrip.zip && unzip roadtrip.zip && rm -rf roadtrip.zip
COPY  .  /var/www/html
EXPOSE  80
