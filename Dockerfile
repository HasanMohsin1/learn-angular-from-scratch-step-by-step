# using Node v10
FROM node:16.14.0

WORKDIR /usr/server/server.js

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 4200

CMD ["node", "server/serve.js"]
