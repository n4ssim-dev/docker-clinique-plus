FROM node:latest

WORKDIR /Api

COPY Api/package*.json ./

RUN npm install

COPY Api .

COPY etl2 /etl2

EXPOSE 3000

CMD ["npx", "nodemon", "index.js"]