FROM jtbouse/alpine-armhf

MAINTAINER Jeremy T. Bouse <Jeremy.Bouse@UnderGrid.net>

ENV NPM_CONFIG_LOGLEVEL info

RUN ["docker-build-start"]
RUN apk add --no-cache nodejs \
	&& npm install yarn -g
RUN ["docker-build-start"]

CMD [ "node" ]
