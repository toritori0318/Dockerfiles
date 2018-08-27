FROM node:8-alpine

MAINTAINER TSUYOSHI TORII toritori0318

RUN apk update && apk --no-cache add --virtual native-deps \
  g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install --quiet node-gyp -g &&\
  npm install --quiet && \
  apk del native-deps

RUN npm install -g grunt-cli gulp
