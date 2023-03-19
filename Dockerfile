FROM node:14-slim

RUN npm install
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]