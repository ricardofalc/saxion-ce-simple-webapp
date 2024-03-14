# Use the official Node.js 8.x image
FROM node:8

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN npm install

# Expose the port the app runs on
ENV PORT 3000
EXPOSE $PORT

# Run the application
CMD ["npm", "run", "start"]
