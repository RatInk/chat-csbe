
FROM node:18-alpine

WORKDIR /app

COPY . .

RUN yarn

RUN yarn add jest

RUN yarn add lint

RUN yarn lint

RUN yarn test

RUN node_modules/.bin/tsc

RUN yarn build

ENTRYPOINT ["node", "./build/index.js"]
