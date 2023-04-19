ARG NODE_VERSION=18.15.0
ARG ALPINE_VERSION=3.16 
ARG NGINX_VERSION=1.23

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} as builder

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN yarn install

FROM nginx:${NGINX_VERSION}-alpine

COPY --from=builder ./build /usr/share/nginx/html
CMD [ "nginx", "-g", "daemon off;" ]