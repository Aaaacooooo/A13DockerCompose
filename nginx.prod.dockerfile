# nginx.prod.dockerfile
FROM nginx:latest

ADD default.prod.conf /etc/nginx/conf.d/default.conf
ADD acoray.informaticamajada.es.test.pem /etc/nginx/certs/acoray.informaticamajada.es.test.pem
ADD acoray.informaticamajada.es.test-key.pem /etc/nginx/certs/acoray.informaticamajada.es.test-key.pem
