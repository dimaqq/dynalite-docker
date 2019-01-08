FROM node:alpine

RUN apk add --no-cache python make g++

COPY package.json package-lock.json /

RUN npm ci

EXPOSE 8000

CMD node_modules/.bin/dynalite --createTableMs 0 --deleteTableMs 0 --updateTableMs 0 --port 8000
