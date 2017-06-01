FROM node:4-alpine

RUN npm -g install dockerlint && rm -rf /root/.npm

ENTRYPOINT ["dockerlint", "/Dockerfile"]