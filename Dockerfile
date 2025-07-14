FROM node:24-alpine
RUN apk add --no-cache bash

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

