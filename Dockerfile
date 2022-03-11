FROM node:8.16.0-alpine

WORKDIR /app  

COPY . /app   

RUN npm install

RUN npm test

CMD node index.js