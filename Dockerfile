FROM nginx:1.17.6

COPY assets/ /usr/share/nginx/html/
COPY conf/nginx.conf /etc/nginx/nginx.conf
COPY conf/conf.d /etc/nginx/conf.d

