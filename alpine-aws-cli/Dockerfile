FROM alpine:3.9

MAINTAINER TSUYOSHI TORII toritori0318

RUN apk update && \
    apk add make python py-pip

RUN pip install awscli
RUN apk del --purge py-pip
RUN rm /var/cache/apk/*

CMD ["/bin/sh"]
