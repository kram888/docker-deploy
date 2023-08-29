FROM ubuntu:18.04
RUN apt-get update -y && apt-get install apache2 -y
RUN service apache2 restart
COPY index.html /var/www/html
RUN chmod -R 777 /var/www/html/index.html
EXPOSE 80
CMD [ "/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

