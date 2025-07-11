FROM node:24-alpine
RUN apk add --no-cache bash
# Set the working directory
WORKDIR /app
# Copy package.json and package-lock.json
COPY package*.json ./
# Install dependencies 
RUN npm install
# Copy the rest of the application code
COPY . .

