FROM node:lts-alpine

# set the working direction
WORKDIR /app

# install app dependencies
COPY package*.json ./

RUN yarn install

# Bundle app source
COPY . ./

RUN chown -R node:node /app/node_modules

# start app
CMD ["yarn", "run", "dev"]
