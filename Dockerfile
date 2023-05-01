ARG NODE_VERSION=20.0.0
ARG ALPINE_VERSION=3.17

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} as build

RUN apk update

WORKDIR /usr/src/app

COPY ./webApp/package*.json ./webApp/
RUN chmod +x ./webApp/package*.json

COPY ./webApp/yarn*.lock ./webApp/
RUN chmod +x ./webApp/yarn*.lock

COPY ./webApp/docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh;

ENV PATH ./webApp/node_modules/.bin:$PATH

RUN cd webApp && yarn -y install

COPY ./webApp ./webApp/

RUN cd webApp && yarn build

#############################################################
#############################################################

# React -> yarn build -> generate "build" directory
# COPY ./web/build /usr/share/nginx/html

COPY ./web/docker-entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/docker-entrypoint.sh

# image pull nginx から参考
COPY ./web/nginx.conf /etc/nginx/conf.d/default.conf
RUN chmod +x /etc/nginx/conf.d/default.conf

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["nginx","-g","daemon off;"]