FROM ubuntu
LABEL  env=testing
MAINTAINER akash
RUN apt update ; apt install apache2 -y
WORKDIR /var/www/html/
COPY index.html . 
COPY myscript.sh .
RUN chmod +x myscript.sh
CMD ["./myscript.sh"]
#CMD ["/usr/sbin/apache2", "-DFOREGROUND"]
