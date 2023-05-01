ARG NODE_VERSION=18.15.0

FROM node:${NODE_VERSION}

RUN apt-get update

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