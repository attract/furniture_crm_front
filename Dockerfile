FROM node:6.7.0

ADD ./front/package.json /app/package.json
WORKDIR /app

RUN npm install

CMD npm start