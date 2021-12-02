FROM node:14

EXPOSE 3000
 
WORKDIR /usr/src/app

COPY /anecdotes .

RUN npm install