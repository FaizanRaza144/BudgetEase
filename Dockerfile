# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies
RUN npm install --lagecy-peer-deps

# Copy the rest of the application code to the container
COPY .env .

COPY . .

# Set environment variables for MongoDB and Redis


# Expose port 8000 for the application
EXPOSE 4000
# Start the application
CMD ["npm", "start"]
