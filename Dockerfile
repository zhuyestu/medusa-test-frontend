FROM node:18

WORKDIR /app/storefront

COPY package.json .
COPY yarn.* .

# RUN apk update

RUN yarn --network-timeout 1000000

COPY . .

ENTRYPOINT [ "yarn", "dev"]


