FROM ubuntu:20.04

USER root

WORKDIR /home/app

COPY . /home/app/

EXPOSE 3000

# Installing Node 22.x 
RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_22.x  | bash -
RUN apt-get -y install nodejs
RUN npm install

CMD ["npm", "run", "start"]
