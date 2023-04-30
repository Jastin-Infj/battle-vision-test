ARG NODE_VERSION=18.15.0
ARG NGINX_VERSION=1.23

FROM node:${NODE_VERSION}

RUN apt-get update

WORKDIR /usr/src/app

COPY package*.json ./
RUN chmod +x package*.json

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh;

RUN yarn -y install

COPY . ./

RUN yarn build

ENTRYPOINT ["docker-entrypoint.sh"]