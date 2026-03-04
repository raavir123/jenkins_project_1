#Use official NOde.js base image
FROM node:18-apline

#set working drectory inside container
WORKDIR /app

#copy package  files and install dependencies
COPY package*.json ./
RUN npm install

#copy the rest of source code
COPY . .

#expose the port the app runs on
EXPOSE 3000

#command to run this app
CMD ["npm", "start"]