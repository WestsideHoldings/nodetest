FROM ubuntu:14.04

RUN sudo apt-get update -y
RUN sudo apt-get install nodejs -y
RUN sudo apt-get install npm -y




COPY package.json /src/package.json
RUN cd /src; npm install --production

COPY . /src



CMD ["node", "/src/app.js"]

