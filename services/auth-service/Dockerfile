FROM node:18-slim AS main

WORKDIR /app

COPY . /app

RUN apt update && apt install -y libssl-dev
RUN npm install

CMD ["npm", "run", "dev"]
