FROM node:alpine

COPY package.json package-lock.json /

RUN apk add --no-cache --virtual /build python make g++ &&\
    npm ci &&\
    apk del --virtual /build

EXPOSE 8000

ENTRYPOINT ["node", "node_modules/.bin/dynalite", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0", "--port", "8000"]
