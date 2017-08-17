FROM docker:latest

MAINTAINER TSUYOSHI TORII toritori0318

RUN apk --no-cache update && \
    apk --no-cache add bash make python py-pip jq && \
    pip --no-cache-dir install awscli
