FROM ubuntu:latest

WORKDIR /app

# Install necessary packages
RUN apt-get update && \
    apt-get install -y sqlite3 nodejs npm build-essential 

COPY package*.json ./

# Install dependencies
RUN npm install

COPY . .



CMD ["npm", "start"]