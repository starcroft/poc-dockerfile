FROM alpine
RUN apk update 
RUN apk add apache2 
COPY ../config/index.html /var/www/localhost/htdocs/index.html
EXPOSE 80
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
