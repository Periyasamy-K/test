FROM Amazon Linux
RUN yum install httpd -y

CMD [tail -f /dev/null]
