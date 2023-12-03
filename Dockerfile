FROM node:20-slim as builder
WORKDIR /usr/src/app
COPY package.json .
COPY package-lock.json* .
RUN npm ci --legacy-peer-deps

FROM node:20-slim
ARG PORT
WORKDIR /usr/src/app
COPY --from=builder /usr/src/app/ /usr/src/app/
COPY . .
CMD npx quartz build --serve --port $PORT