# Version: 0.0.1
FROM node:latest
MAINTAINER Your Name Here "you@example.com"
EXPOSE 8085

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# this will fail as .js files don't exist until you make Jenkins job to pull them in for you
COPY node-app/package.json /usr/src/app/
RUN npm install
COPY node-app/app.js /usr/src/app/

CMD [ "npm", "start" ]
