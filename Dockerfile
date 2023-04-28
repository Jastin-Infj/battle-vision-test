ARG NODE_VERSION=18.15.0
ARG ALPINE_VERSION=3.17
ARG NGINX_VERSION=1.23

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION}

WORKDIR /usr/src/app

COPY package*.json ./
RUN chmod +x package*.json

COPY yarn*.lock ./
RUN chmod +x yarn*.lock

COPY docker-entrypoint.sh ./

# 実行する場合 +x が必要になる
RUN mv ./docker-entrypoint.sh /usr/local/bin; \
    chmod +x /usr/local/bin/docker-entrypoint.sh;

RUN yarn install

COPY . ./

RUN yarn build

ENTRYPOINT ["docker-entrypoint.sh"]