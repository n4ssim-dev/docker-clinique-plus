FROM node
WORKDIR /Api
COPY package.json /Api
RUN npm install
COPY . /Api
CMD ["node","index.js"]