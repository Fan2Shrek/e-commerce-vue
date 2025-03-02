# Product Dockerfile

ARG NODE_VERSION=18

FROM node:${NODE_VERSION}-bullseye AS main

WORKDIR /app

COPY . /app

RUN npm install

CMD ["npm", "run", "dev"]


FROM node:${NODE_VERSION}-alpine AS prod

WORKDIR /app

COPY . /app

# Can't use npm ci because it depends on package-lock.json
RUN npm i --omit=dev

CMD ["npm", "run", "start"]
