FROM node:20.14-bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends zlib1g-dev

RUN npm install -g npm@9.1.3

ADD package.json .
ADD index.js .
ADD build .
COPY . .
RUN npm install

EXPOSE 8080

CMD [ "node", "index.js" ]
