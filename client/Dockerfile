FROM mhart/alpine-node:12

COPY . /srv/www/src
WORKDIR /srv/www/src

RUN npm -g config set user root
RUN npm install -g elm express parcel-bundler 
RUN npm i 
RUN npm run build