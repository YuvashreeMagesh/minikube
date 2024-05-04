# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000 (change it if your Node.js app uses a different port)
EXPOSE 3000

# Command to run your Node.js application
CMD ["node", "app.js"]
