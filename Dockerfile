FROM node:14


ADD package*.json /tmp/

RUN rm -rf build

RUN cd /tmp && npm install

ADD ./ /src

RUN rm -rf src/node_modules && cp -a /tmp/node_modules /src/

WORKDIR /src

EXPOSE 3000


CMD ["node", "app.js"]