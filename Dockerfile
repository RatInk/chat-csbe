
FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn

RUN yarn add jest

RUN yarn jest

RUN node_modules/.bin/tsc

RUN yarn build

RUN yarn lint

ENTRYPOINT ["node", "./build/index.js"]
