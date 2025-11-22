# Use Node 12 base image
FROM node:12

# Set working directory inside container
WORKDIR /app

# Copy package files if present
COPY package*.json ./

# Install dependencies (skip if no package.json)
RUN npm install || true

# Copy the entire project
COPY . .

# Expose port used by the server
EXPOSE 3000

# Start the server
CMD ["node", "server.js"]
