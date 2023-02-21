FROM centos:7
RUN yum -y update
RUN yum -y install httpd httpd-tools
COPY /home/index.html /var/www/html/index.html
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
