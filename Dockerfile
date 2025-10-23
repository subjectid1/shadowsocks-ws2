FROM alpine
WORKDIR /usr/app

COPY ./ ./
 
 
RUN apk add --update nodejs


RUN apk add --update npm

 
 
RUN npm i
 
RUN npm run build
ENV METHOD=aes-256-gcm
ENV PASS=notfre
ENV PORT=80
EXPOSE 80 
EXPOSE 80/udp
CMD [ "npm", "start" ] 