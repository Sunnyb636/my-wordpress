FROM nginx:latest
RUN apt-get update
RUN apt install wordpress -y
COPY sites-available /etc/nginx
COPY sites-enabled /etc/nginx
COPY nginx.conf /etc/nginx/nginx.conf
COPY wordpress /var/www/html/wordpress
EXPOSE 80
