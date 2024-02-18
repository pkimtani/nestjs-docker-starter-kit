##############################################################################################################
# Dockerfile to build Node.js Application
# Build stage is only used to optimise the build process
# To install dependencies to your local machine, run the following command:
# docker run --rm -v $(pwd):/app node:16-alpine npm install
##############################################################################################################
FROM node:20.11.1-alpine AS build

ARG NODE_ENV=dev

COPY package.json package-lock.json ./
RUN if [ "$NODE_ENV" = "dev" ]; then npm install; else npm install --only=production; fi

##############################################################################################################
# Development stage
##############################################################################################################
FROM node:20.11.1-alpine AS dev

WORKDIR /app

COPY --from=build node_modules node_modules
COPY . .

EXPOSE 3000
EXPOSE 3001
CMD ["npm", "run", "start:dev"]

##############################################################################################################
# Production stage
# TODO: Add production build
##############################################################################################################