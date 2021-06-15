FROM node:16.3.0-alpine3.11

WORKDIR /app
COPY package.json package-lock.json /app

RUN apk add --no-cache --upgrade --virtual /build make g++ &&\
    npm ci &&\
    apk del /build

EXPOSE 8000

ENTRYPOINT ["node", "app/node_modules/.bin/dynalite", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0", "--port", "8000"]
