FROM jtbouse/alpine-armhf

MAINTAINER Jeremy T. Bouse <Jeremy.Bouse@UnderGrid.net>

ENV NPM_CONFIG_LOGLEVEL info

RUN ["docker-build-start"]
RUN apk add --no-cache nodejs \
	&& npm config set registry http://registry.npmjs.org/
RUN ["docker-build-start"]

CMD [ "node" ]
