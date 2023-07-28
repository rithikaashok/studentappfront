# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json (if available)
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy all the files from the host's current directory to the working directory in the container
COPY . .

# Build the React app (modify the command according to your build script, if needed)
RUN npm run build

# Serve the application using a simple static server (you can use any server you prefer)
RUN npm install -g serve
CMD ["serve", "-s", "build", "-l", "3000"]

# Expose the port that the app will be running on
EXPOSE 3000
