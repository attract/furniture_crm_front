FROM ubuntu:latest

ADD package.json /app/package.json

WORKDIR /app

EXPOSE 3000
RUN apt-get update
RUN apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && apt-get install nodejs -y
#RUN npm install webpack -g
RUN npm install

CMD npm start
