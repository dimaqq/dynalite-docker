# Node 11 until dynalite is upgraded to leveldown^5 #2 mhart/dynalite#112
FROM node:12-alpine

COPY package.json package-lock.json /

RUN apk add --no-cache --upgrade --virtual /build python make g++ &&\
    npm ci &&\
    apk del /build

EXPOSE 8000

ENTRYPOINT ["node", "node_modules/.bin/dynalite", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0", "--port", "8000"]
