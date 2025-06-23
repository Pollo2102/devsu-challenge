FROM node:18.15-slim

COPY . /home/node/app

WORKDIR /home/node/app

RUN apt update -y &&\
    npm i

EXPOSE 8000

CMD [ "npm", "start" ]