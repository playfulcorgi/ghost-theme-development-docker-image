# ghost.org theme development Docker image

How to start developing:
1. `docker run -d --name ghostdev -p 2368:2368 --rm -v "$(pwd)":/app ghostdev`
1. `ghost install local --no-start`
1. `mkdir -p /app/content/themes/newtheme`
1. `cd /app/content/themes/newtheme`
    1. `git clone https://github.com/TryGhost/Casper.git .`
    1. `yarn install`
    1. `yarn dev`
1. `nodemon current/index.js --watch content/themes/newtheme --ext hbs,js,css`

To run commands inside Docker: `docker exec -ti CONTAINERID /bin/bash`

Port for the development site: `2368`.

Make site public by changing `server.host` inside `/config.development.json` to `0.0.0.0`.