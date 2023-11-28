
FROM nginx:stable-alpine

ENV NGINXUSER=laravel
ENV NGINXGROUP=laravel

RUN mkdir -p /var/www/html/public

ADD default.prod.conf /etc/nginx/conf.d/default.conf
ADD acoray.informaticamajada.es.pem /etc/nginx/certs/acoray.informaticamajada.es.pem
ADD acoray.informaticamajada.es-key.pem /etc/nginx/certs/acoray.informaticamajada.es-key.pem

RUN sed -i "s/user www-data/user ${NGINXUSER}/g" /etc/nginx/nginx.conf
RUN adduser -g ${NGINXGROUP} -s /bin/sh -D ${NGINXUSER}
