FROM httpd:latest

RUN apt-get update && apt-get install -y wget unzip \
    && wget https://templated.live/roadtrip/download/roadtrip.zip \
    && unzip roadtrip.zip \
    && cp -r * /usr/local/apache2/htdocs/ \
    && rm -rf roadtrip.zip 
    
EXPOSE 80
