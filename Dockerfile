# Use an official Node.js image as the base image
FROM node:20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install --omit=dev

# Copy the rest of the application code to the container
COPY . .

# Expose the port your application runs on
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
