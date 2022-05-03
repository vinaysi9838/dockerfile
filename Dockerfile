ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y apache2
RUN  apt-get install -y zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page278/careo.zip /var/www/
WORKDIR /var/www/
RUN unzip careo.zip
RUN rm -rf /var/www/html/index.html
RUN cp -rvf careo/* /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
