FROM node:17-alpine3.14

WORKDIR /app
COPY package.json package-lock.json /app/

RUN apk add --no-cache --upgrade --virtual /build make g++ &&\
    npm ci &&\
    apk del /build

EXPOSE 8000

ENTRYPOINT ["node", "node_modules/.bin/dynalite", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0", "--port", "8000"]
