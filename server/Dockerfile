FROM haskell:8.8.3

COPY . /srv/www/src
WORKDIR /srv/www/src

RUN cabal update && cabal install
