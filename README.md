### NestJS Docker based development - starter kit

This project is a starter kit for NestJS based projects. It uses Docker for development.

#### How to use?

- Clone the repo
- Update the `name` and `description` in package JSON according the project
- Copy the `.env.example` to `.env` (`cp .env.example .env`) and fill the required env variables
- Run `docker run --rm -v $(pwd):/app node:16-alpine npm install` to install the dependencies and sync node modules to your local machine
- Start the project with `docker compose up -d`

#### Notes:
- [To update packages] - `npx npm-check-updates`