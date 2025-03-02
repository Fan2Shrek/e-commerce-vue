# Auth Dockerfile

ARG NODE_VERSION=18

FROM node:${NODE_VERSION} AS main

WORKDIR /app

COPY . /app

# RUN chmod +x ./libssl1.1-error-troubleshooting.sh
# RUN ./libssl1.1-error-troubleshooting.sh
RUN dpkg -i libssl1.1_1.1.1w-0+deb11u2_amd64.deb

RUN npm install

CMD ["npm", "run", "dev"]


FROM node:${NODE_VERSION}-alpine AS prod

WORKDIR /app

# Maybe change
RUN apk add openssl

COPY . /app

# Can't use npm ci because it depends on package-lock.json
RUN npm i --omit=dev

CMD ["npm", "run", "start"]
