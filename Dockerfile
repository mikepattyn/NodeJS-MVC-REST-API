FROM node:18.2.0

WORKDIR /usr/src/app

COPY "package.json" .
COPY "tsconfig.json" .
COPY "custom.d.ts" .
COPY ".env" .

COPY ./src ./src

RUN npm install

CMD npm run buildstart