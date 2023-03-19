FROM node:alpine

WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
EXPOSE 443
EXPOSE 443/udp
CMD [ "npm", "start" ]