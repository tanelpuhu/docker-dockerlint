FROM node:alpine

ENV DOCKERLINT_VERSION="0.3.9"

RUN npm config set unsafe-perm true

RUN npm -g install dockerlint && rm -rf /root/.npm

ENTRYPOINT ["dockerlint"]

CMD ["-f", "/Dockerfile"]
