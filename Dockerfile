FROM node:20-alpine3.20

WORKDIR /tmp

ENV UUID=50435f3a-ec1f-4e1a-867c-385128b447f6 \
    ARGO_DOMAIN=xxxx.com \
    ARGO_AUTH=eyxxxxx
    

RUN apk update && apk add --no-cache bash openssl curl &&\
    npm i jssbx

CMD ["npx", "jssbx"]
