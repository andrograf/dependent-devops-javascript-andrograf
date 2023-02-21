# Use a lightweight node image as base
FROM node:alpine

# Set the working directory to /app
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install --only=production

# Copy the app files to the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD [ "npm", "start" ]