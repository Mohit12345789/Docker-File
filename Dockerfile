FROM httpd:latest

RUN apt-get update && apt-get install -y wget unzip \
    && wget https://templated.live/roadtrip/download/roadtrip.zip \
    && unzip -o roadtrip.zip -d /usr/local/apache2/htdocs/ \
    && rm -rf roadtrip.zip 
    
EXPOSE 80
