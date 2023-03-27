#this comment were added to trigger workflow
# Basic nginx dockerfile starting with Ubuntu 20.04
FROM ubuntu:20.04
RUN apt-get -y update
RUN apt-get -y install nginx

FROM node:18.15.0
RUN mkdir /app
WORKDIR /app
ADD . .
RUN npm
RUN npm tailwind:build
EXPOSE 3030
CMD ["npm", "start"]

FROM node:alpine
COPY . /src
WORKDIR /src
CMD node app.js
