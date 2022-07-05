FROM node:16-alpine AS base

WORKDIR /app

COPY package.json package-lock.json ./

# Only for deevelopment
FROM base as dev

RUN npm install

EXPOSE 3000
EXPOSE 3001
CMD ["npm", "run", "start:dev"]

# TODO: Production specific
