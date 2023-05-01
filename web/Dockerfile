ARG NGINX_VERSION=1.23.4
ARG ALPINE_VERSION=3.17

FROM nginx:${NGINX_VERSION}-alpine${ALPINE_VERSION}

# React -> yarn build -> generate "build" directory
WORKDIR /usr/src/app/web

RUN cd .. && cd webApp && mv ./build /usr/src/app/web
COPY ./build /usr/share/nginx/html

COPY docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# image pull nginx から参考
COPY nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod +x /etc/nginx/conf.d/default.conf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx","-g","daemon off;"]