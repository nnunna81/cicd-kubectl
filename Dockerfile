FROM node:latest
WORKDIR /opt
COPY sample-website-1 /opt
RUN npm install
EXPOSE 3000
CMD [ "node", "/opt/server.js" ]
