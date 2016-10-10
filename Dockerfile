FROM node:6.7.0

ADD package.json /app/package.json
WORKDIR /app

RUN npm install typescript -g
RUN npm install typing -g

RUN npm install
RUN typing install

CMD npm start
