FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --build-from-source

COPY . .



CMD [ "npm", "start"]