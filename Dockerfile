FROM nginx
COPY ./server-checker-ssl/archive/server-checker.com /etc/letsencrypt/archive/server-checker.com
COPY ./server-checker-ssl/live/server-checker.com /etc/letsencrypt/live/server-checker.com
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY ./conf /etc/nginx/includes

EXPOSE 443
EXPOSE 80