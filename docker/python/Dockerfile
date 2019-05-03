FROM Python:3.6.6-slim

COPY ./server /srv/www/src
WORKDIR /srv/www/src

RUN echo ls /srv/www/src

RUN apk update && apk add python3-dev cmake gcc
RUN python3 -m install -U pip setuptools
RUN pip install -r requirements.txt

CMD ["python3 /srv/www/src/server/main.py"]