# nginx.prod.dockerfile
FROM nginx:latest

ADD default.prod.conf /etc/nginx/conf.d/default.conf
ADD laravel-docker.test.pem /etc/nginx/certs/laravel-docker.test.pem
ADD laravel-docker.test-key.pem /etc/nginx/certs/laravel-docker.test-key.pem
