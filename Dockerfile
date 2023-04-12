FROM node:18.13-buster

LABEL maintainer="Churchill Selma<github.com/sursill>"

WORKDIR /home/node
COPY . .

RUN npm i -g pnpm

# Causing permission issues again. Need to investigate and enable again
# USER node

CMD bash -c "pnpm install && pnpm dev -o"
