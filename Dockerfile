FROM node:latest

RUN mkdir -p /app

WORKDIR /app

COPY ./package.json /app
COPY ./package-lock.json /app

RUN npm ci

COPY . /app

EXPOSE 7500

ENTRYPOINT ["node"]

CMD ["index.js"]