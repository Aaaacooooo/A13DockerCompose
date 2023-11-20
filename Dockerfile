
# Use the official Nginx image based on Alpine Linux with the "stable" version.
FROM nginx:stable-alpine

# Set the NGINXUSER environment variable with the value "laravel".
ENV NGINXUSER=laravel

# Set the NGINXGROUP environment variable with the value "laravel".
ENV NGINXGROUP=laravel

# Create a directory named "public" inside /var/www/html in the container.
RUN mkdir -p /var/www/html/public

# Copy the local configuration file "default.conf" to the directory /etc/nginx/conf.d/default.conf in the container.
ADD default.conf /etc/nginx/conf.d/default.conf

# Modify the Nginx configuration file to change the user from www-data to ${NGINXUSER}.
RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf

# Add a user with the name ${NGINXUSER} and the group ${NGINXGROUP} to the container.
RUN adduser -g ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}