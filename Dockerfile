FROM ubuntu:latest
WORKDIR /var/www/html
COPY . /var/www/html
ADD photogenic/* /var/www/html
RUN apt-get update && apt-get install -y unzip
RUN apt-get install -y apache2
RUN cp -rvf photogenic/* .
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80