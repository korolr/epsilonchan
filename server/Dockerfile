FROM python:3.6.6-stretch

COPY . /srv/www/src
WORKDIR /srv/www/src

RUN python3 -m pip install --upgrade pip setuptools
RUN pip install -r requirements.txt