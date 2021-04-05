FROM centos
RUN yum install -y nginx
RUN yum install -y httpd
EXPOSE 80 443 
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]
