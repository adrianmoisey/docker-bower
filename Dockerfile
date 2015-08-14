FROM node:0.10.32

MAINTAINER Adrian Moisey <adrian@changeover.za.net>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g bower@1.3.12

ONBUILD COPY bower.json /usr/src/app/
ONBUILD RUN bower --allow-root install
