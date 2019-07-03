FROM node:carbon
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN yum update -y && \
yum install -y wget && \
yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && \
yum clean all
COPY . .
EXPOSE 8080
CMD ["npm" , "start"]
