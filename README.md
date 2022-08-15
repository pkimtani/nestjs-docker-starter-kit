### NestJS Docker based development - starter kit

#### How to use?

- Clone the repo
- Update the `name` and `description` in package JSON according the project
- Copy the `.env.example` to `.env` (`cp .env.example .env`) and fill the required env variables
- Run `npm install`
- Start the project with `docker compose up -d`

#### Limitations/Future plans:
- [ ] Setup node_modules to install from docker and make it readable in WebStorm

#### Notes:

- [To update packages] - `npx npm-check-updates`