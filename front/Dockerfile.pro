FROM node:12.5.0-alpine

ENV HOME="/app" \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo

ENV HOST 0.0.0.0

WORKDIR ${HOME}
ADD . .
RUN apk update && \
    apk upgrade && \
    npm install -g n && \
    yarn install &&\
    rm -rf /var/cache/apk/*

EXPOSE 3000
RUN yarn run build
CMD ["yarn", "start"]