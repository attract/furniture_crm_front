FROM node:6.7.0

ADD package.json /app/package.json
ADD typings.json /app/typings.json
WORKDIR /app

RUN npm install
RUN ./node_modules/.bin/typings install

## Install nginx
RUN apt-get update \
    && apt-get install -y nano wget dialog net-tools \
    && apt-get install -y nginx \
    && echo "daemon off;" >> /etc/nginx/nginx.conf \
    && groupadd -r nginx \
    && useradd -r -g nginx nginx

# Todo: build
#RUN ./node_modules/.bin/gulp build

CMD npm start
