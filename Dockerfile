# syntax=docker/dockerfile:1.3-labs
FROM node:21-alpine3.18

WORKDIR /app
COPY package.json package-lock.json /app/

RUN <<EOF
  apk add --no-cache --upgrade --virtual /build make g++
  npm ci
  apk del /build
EOF

EXPOSE 8000

ENTRYPOINT ["node", "node_modules/.bin/dynalite", "--createTableMs", "0", "--deleteTableMs", "0", "--updateTableMs", "0", "--port", "8000"]
