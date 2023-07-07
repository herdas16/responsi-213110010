FROM Ubuntu.lastest
# Install Apache Web Server
RUN apt-get update && apt-get install -y apache2

# Salin portofolio web ke dalam direktori root Apache
COPY <nama_file_portofolio> /var/www/html

# Expose port 80 untuk akses HTTP
EXPOSE 80

# Jalankan Apache Web Server saat container dijalankan
CMD ["apache2ctl", "-D", "FOREGROUND"]