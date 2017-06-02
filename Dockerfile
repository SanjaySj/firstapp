FROM node:boron

# Create app directory
RUN mkdir -p /home/sanjay/Desktop/firstapp
WORKDIR /home/sanjay/Desktop/firstapp

# Install app dependencies
COPY package.json /home/sanjay/Desktop/firstapp
RUN npm install

# Bundle app source
COPY . /home/sanjay/Desktop/firstapp

EXPOSE 8080
CMD [ "npm", "start" ]

