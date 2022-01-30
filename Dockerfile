# Specify a base image
FROM node:alpine

WORKDIR /usr/app
# Install some depenendencies
COPY ./package.json ./
RUN npm install
RUN npm install -g npm@8.4.0
COPY ./ ./

# Default command
CMD ["npm", "start"]