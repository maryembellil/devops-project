# Use a minimal base image for production
FROM ubuntu:latest

# Set the working directory
WORKDIR /app

# Update and install required packages
RUN apt-get update && apt-get install -y \
    sqlite3 \
    nodejs \
    npm \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Copy package.json and package-lock.json for dependency installation
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the application code
COPY . .

# Expose the application port (replace 3000 with your app's actual port if different)
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
