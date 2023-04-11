FROM node:18.15.0-alpine3.16
WORKDIR /usr/src/app
COPY . /usr/src/app
CMD tail -f /dev/null
EXPOSE 8000