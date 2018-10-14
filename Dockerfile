FROM node:8.9

WORKDIR /app

RUN apt-get update

RUN adduser --disabled-password --gecos "" --ingroup root ghostdev
RUN chown ghostdev /app

USER ghostdev

RUN mkdir /home/ghostdev/.npm-global
ENV PATH=/home/ghostdev/.npm-global/bin:$PATH
ENV NPM_CONFIG_PREFIX=/home/ghostdev/.npm-global

RUN npm install -gy ghost-cli@^1.9.6
RUN npm install -gy nodemon@latest
RUN npm install -gy gscan@latest

EXPOSE 2368
ENV NODE_ENV=development

CMD [ "tail", "-f", "/dev/null" ]