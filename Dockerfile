FROM httpd:latest

RUN apt-get update && \
    apt-get install -y wget unzip && \
    wget https://templated.live/roadtrip/download/roadtrip.zip && \
    unzip roadtrip.zip
    
COPY . /usr/local/apache2/htdocs

EXPOSE 80
