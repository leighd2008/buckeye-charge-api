FROM node:alpine

WORKDIR /usr/src/buckeye-charge-api

COPY ./ ./

RUN npm install

CMD ["/bin/sh"]