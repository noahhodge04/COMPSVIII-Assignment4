# Select Node 16 as the base image
FROM node:16

# Working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Open the port specified in app.js
EXPOSE 3000

CMD ["npm", "start"]