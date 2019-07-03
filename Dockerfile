FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN apt update
RUN apt install -y default-jre
COPY . .
EXPOSE 8080
CMD ["npm" , "start"]
