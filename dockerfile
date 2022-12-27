FROM httpd

RUN apt-get update && apt-get upgrade -y

COPY index.html /usr/local/apache2/htdocs/

RUN chown www-data:www-data /usr/local/apache2/htdocs/ -R

EXPOSE 8081
