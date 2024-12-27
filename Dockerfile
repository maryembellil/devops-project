FROM node:18-alpine-x86 

WORKDIR /app

COPY package*.json ./

# Install build dependencies for 32-bit Alpine
RUN apk add --no-cache build-base gcc g++ make 

# Install node modules 
RUN npm install --build-from-source 

COPY . .

CMD ["npm", "start"]