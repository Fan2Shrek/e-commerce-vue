# Auth Dockerfile

ARG NODE_VERSION=18

FROM node:${NODE_VERSION}-slim AS main

WORKDIR /app

RUN apt update && apt install -y libssl-dev

COPY . /app

RUN npm install

CMD ["npm", "run", "dev"]


FROM node:${NODE_VERSION}-alpine AS prod

WORKDIR /app

RUN apk add openssl

COPY . /app

# Can't use npm ci because it depends on package-lock.json
RUN npm i --omit=dev

CMD ["npm", "run", "start"]

