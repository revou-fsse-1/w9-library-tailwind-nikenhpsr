#this comment were added to trigger workflow
# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu:20.04
RUN apt-get -y update
RUN apt-get -y install nginx

FROM node:alpine
COPY . /src
WORKDIR /src
CMD node app.js