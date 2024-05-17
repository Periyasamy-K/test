FROM centos:7
RUN yum install httpd -y
RUN systemctl restart httpd
RUN systemctl enable httpd
RUN curl -O https://www.free-css.com/assets/files/free-css-templates/download/page295/applight.zip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page295/applight.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip applight.zip
RUN cp -rvf applight/* .
RUN rm -rf applight applight.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
