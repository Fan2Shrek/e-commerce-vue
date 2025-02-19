# Frontend Dockerfile

ARG NODE_VERSION=18

FROM node:${NODE_VERSION}-slim AS main

WORKDIR /app

COPY . /app

RUN npm install

CMD ["npm", "run", "dev"]


FROM main AS builder

RUN npm run build


FROM node:${NODE_VERSION}-alpine AS prod

WORKDIR /app

COPY --from=builder /app/package* /app/
COPY --from=builder /app/server.cjs /app/server.cjs

COPY --from=builder /app/dist /app/dist

RUN npm ci --omit=dev

CMD ["npm", "run", "start"]

