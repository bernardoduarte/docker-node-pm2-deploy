FROM amazonlinux:latest

MAINTAINER Leo Dutra <leodutra.br@gmail.com>

RUN yum install git -y && \
    touch ~/.bashrc && \
    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.6/install.sh | bash && \
    source ~/.bashrc && \
    nvm install 8.9.1 && \
    nvm use 8.9.1 && \
    npm i yarn -g && \
    yarn global add pm2
