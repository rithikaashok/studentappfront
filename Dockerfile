# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json /app

# Install project dependencies

RUN npm install

# Copy all the files from the host's current directory to the working directory in the container
COPY . /app

CMD ["npm","start"]
