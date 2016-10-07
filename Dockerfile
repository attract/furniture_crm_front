FROM node:6.7.0

ADD package.json /app/package.json
WORKDIR /app

RUN npm install

CMD npm start