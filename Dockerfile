
FROM node:8.9.1-alpine

MAINTAINER Leo Dutra <leodutra.br@gmail.com>

RUN apk add --no-cache openssh git && \
    yarn global add pm2
