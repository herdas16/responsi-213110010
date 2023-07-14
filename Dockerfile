FROM Ubuntu.lastest
RUN apt-get update && apt-get install -y apache2
COPY webcv/ /var/www/html/
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
