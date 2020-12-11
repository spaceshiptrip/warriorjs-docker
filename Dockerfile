FROM node:12

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json

# Create app directory
#WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./

RUN yarn install
# If you are building your code for production
# RUN npm ci --only=production

# add app
COPY . /app

# Bundle app source
# COPY . .

EXPOSE 8080
CMD [ "node", "app.js" ]