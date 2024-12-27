FROM ubuntu:latest 

RUN apt-get update && \
    apt-get install -y sqlite3 nodejs 

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm install -g pm2

CMD ["pm2-runtime", "npm", "start"]