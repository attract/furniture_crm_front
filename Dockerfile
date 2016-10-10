FROM node:6.7.0

ADD package.json /app/package.json
WORKDIR /app

RUN npm install
RUN ./node_modules/.bin/typings install


CMD npm start
