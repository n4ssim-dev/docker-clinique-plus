FROM node

WORKDIR /Api

COPY Api/package.json /Api
RUN npm install

COPY Api /Api
COPY etl2 /etl2

CMD ["node", "index.js"]