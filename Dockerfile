#this comment were added to trigger workflow
# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu:20.04
RUN apt-get -y update
RUN apt-get -y install nginx

FROM node:19.3.0-alpine3.17

RUN mkdir /app

COPY . /app

WORKDIR /app

RUN npm install

EXPOSE 8080

FROM node:alpine
COPY . /src
WORKDIR /src
CMD node app.js
