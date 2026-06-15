FROM centos/httpd:latest

RUN yum install -y wget unzip \
    && wget https://templated.live/roadtrip/download/roadtrip.zip \
    && unzip roadtrip.zip \
    && rm -f roadtrip.zip

COPY . /var/www/html

EXPOSE 80
