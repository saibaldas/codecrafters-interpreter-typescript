FROM imbios/bun-node:18-alpine AS build
RUN apk update && apk add bash
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
