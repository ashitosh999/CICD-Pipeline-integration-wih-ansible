FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
RUN apt install systemctl -y
COPY . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
EXPOSE 80
