# Fetching the latest node image on alpine linux
FROM node:21-alpine3.17

# Declaring env
ENV NODE_ENV production

# Setting up the work directory
WORKDIR /vcc-poc

# Installing dependencies
COPY ./package.json /vcc-poc
RUN npm install

# Copying all the files in our project
COPY . .

EXPOSE 3001

# Starting our application
CMD ["npm", "start"]