FROM nginx:alpine

COPY . /usr/share/nginx/html
COPY . /usr/share/nginx/html

RUN chmod -R 777 /var/log/nginx /var/cache/nginx /var/run \
    && chgrp -R 0 /etc/nginx \
    && chmod -R g+rwX /etc/nginx \
    && rm /etc/nginx/conf.d/default.conf
    
    EXPOSE 8080

