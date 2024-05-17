FROM centos:7
RUN yum install httpd -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/applight.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip applight.zip
RUN cp -rvf applight/* .
RUN rm -rf applight applight.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
