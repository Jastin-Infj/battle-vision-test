ARG NODE_VERSION=18.15.0
ARG ALPINE_VERSION=3.17
ARG NGINX_VERSION=1.23

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS builder

# /app $HOME  ~ とする

WORKDIR /usr/src/app

# yarn install が出来ないため

# ~ 直下
COPY package*.json ./
COPY yarn.lock ./

RUN yarn install

# node_modules and ソースコード直下
COPY . .

# 公開用 index.html 作成 
RUN yarn build

# 上の範囲で行った後に起動する
FROM nginx:${NGINX_VERSION}-alpine${ALPINE_VERSION} AS server

# index.html 受取 $HOMEではなく ~ になる
COPY --from=builder /usr/src/app/build  /usr/share/nginx/html
COPY ./nginx /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]