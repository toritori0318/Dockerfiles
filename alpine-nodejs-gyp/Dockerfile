FROM node:8-alpine

MAINTAINER TSUYOSHI TORII toritori0318

RUN apk update && apk --no-cache add g++ gcc libgcc libstdc++ linux-headers make python && \
  npm install npm@latest -g && \
  npm install --quiet node-gyp -g

RUN npm install -g grunt-cli gulp
