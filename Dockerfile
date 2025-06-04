# Use a newer Node.js base image
FROM node:18-alpine

# Install http-server globally
RUN npm install -g http-server

# Set working directory
WORKDIR app

# Copy your HTML/CSS/JS files
COPY . .

# Expose the desired port
EXPOSE 8000

# Serve files using http-server
CMD ["http-server", "-p", "8000"]
