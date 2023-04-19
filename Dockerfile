ARG NODE_VERSION=18.15.0
ARG ALPINE_VERSION=3.17
ARG NGINX_VERSION=1.23

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS builder

WORKDIR /app

# yarn install が出来ないため
COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

# node_modules and ソースコード
COPY . .

# 公開用 index.html 作成 
RUN yarn build

# 上の範囲で行った後に起動する
FROM nginx:${NGINX_VERSION}-alpine${ALPINE_VERSION} AS server

RUN apk update \
   && apk upgrade \
   && apk add --no-cache openssl \
   && apk add --no-cache certbot

# index.html 受取
COPY --from=builder ./app/build  /usr/share/nginx/html
COPY ./nginx /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]