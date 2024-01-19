FROM node:16

WORKDIR /app

COPY . /app

EXPOSE 3000

RUN npm install

RUN npm install -g @nestjs/cli

CMD npm run prisma && npm start
# CMD npm start
