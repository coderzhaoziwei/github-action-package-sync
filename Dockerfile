# https://pkgs.alpinelinux.org/packages
FROM alpine:latest

RUN apk add --no-cache bash
RUN apk add git

# add jq for json parsing
RUN apk add jq

# add grep for xml parsing
# RUN apk add grep

# add curl for github api commands
RUN apk add curl

COPY package.json /package.json
COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
