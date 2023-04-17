ARG NODE_VERSION=18.15.0
ARG ALPINE_VERSION=3.16 

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION}

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN yarn --frozen-lockfile && \
    yarn build

RUN ["yarn","install"]