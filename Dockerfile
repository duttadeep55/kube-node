FROM node:7.4.0-alpine

ENV REFRESHED_AT 2017-01-06

MAINTAINER Jeff Deskins

# Install and cache app dependencies
COPY package.json /src/package.json

WORKDIR /src

RUN npm install

# Bundle app source
COPY . /src

EXPOSE  8080
CMD ["npm", "start"]
