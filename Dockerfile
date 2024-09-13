FROM node:20-alpine as BUILD_IMAGE

WORKDIR /var/www/app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "run", "dev" ]
