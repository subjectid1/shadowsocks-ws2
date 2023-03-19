FROM node:14-slim

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 80
CMD [ "npm", "start" ]