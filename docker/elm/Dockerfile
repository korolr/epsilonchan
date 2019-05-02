FROM mhart/alpine-node:8

COPY ./client /srv/www/src
WORKDIR /srv/www/src

RUN npm -g config set user root
RUN npm install -g elm 