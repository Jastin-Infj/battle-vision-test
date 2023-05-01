ARG NODE_VERSION=20.0.0
ARG ALPINE_VERSION=3.17

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION}

RUN apk update

WORKDIR /usr/src/app/web

COPY package*.json ./
RUN chmod +x package*.json

COPY yarn*.lock ./
RUN chmod +x yarn*.lock

COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh;

ENV PATH ./node_modules/.bin:$PATH

RUN yarn -y install

COPY . .

RUN yarn build

ENTRYPOINT ["docker-entrypoint.sh"]